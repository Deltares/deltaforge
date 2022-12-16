#!/usr/bin/env bash

set -xe

env | sort

echo "***** Start: Building Deltaforge installer *****"
CONSTRUCT_ROOT="${CONSTRUCT_ROOT:-${PWD}}"

cd "${CONSTRUCT_ROOT}"

echo "***** Install libmamba solver *****"
conda update -y conda=22.9
conda install conda-libmamba-solver
conda config --set experimental_solver libmamba

echo "***** Install constructor *****"
conda install -y conda-standalone menuinst freetype jinja2 curl libarchive "ruamel_yaml>=0.11.14,<0.16" -c conda-forge --override-channels

if [[ "$(uname)" == "Darwin" ]]; then
    conda install -y coreutils -c conda-forge --override-channels
fi
# shellcheck disable=SC2154
if [[ "${TARGET_PLATFORM}" == win-* ]]; then
    conda install -y "nsis=3.01" "pillow>=3.1" -c conda-forge --override-channels
fi

# We require the latest, unreleased version of constructor,
# as this supports the libmamba solver
pip install git+https://github.com/conda/constructor

conda list

echo "***** Make temp directory *****"
if [[ "$(uname)" == MINGW* ]]; then
   TEMP_DIR=$(mktemp -d --tmpdir=C:/Users/RUNNER~1/AppData/Local/Temp/);
else
   TEMP_DIR=$(mktemp -d);
fi

# Force to most permissive so that constructor has 
# the most permissive situation.
chmod 777 ${TEMP_DIR}

echo "***** Copy file for installer construction *****"
cp -R deltaforge "${TEMP_DIR}/"
cp LICENSE "${TEMP_DIR}/"

ls -al "${TEMP_DIR}"

echo "***** Construct the installer *****"
# Transmutation requires the current directory is writable
cd "${TEMP_DIR}"
# shellcheck disable=SC2086
constructor "${TEMP_DIR}/deltaforge/" --output-dir "${TEMP_DIR}" ${EXTRA_CONSTRUCTOR_ARGS}
cd -

echo "***** Generate installer hash *****"
cd "${TEMP_DIR}"
if [[ "$(uname)" == MINGW* ]]; then
   EXT="exe";
else
   EXT="sh";
fi
# This line will break if there is more than one installer in the folder.
INSTALLER_PATH=$(find . -name "Deltaforge*.${EXT}" | head -n 1)
HASH_PATH="${INSTALLER_PATH}.sha256"
sha256sum "${INSTALLER_PATH}" > "${HASH_PATH}"

echo "***** Move installer and hash to build folder *****"
mkdir -p "${CONSTRUCT_ROOT}/build"
mv "${INSTALLER_PATH}" "${CONSTRUCT_ROOT}/build/"
mv "${HASH_PATH}" "${CONSTRUCT_ROOT}/build/"

echo "***** Done: Building Deltaforge installer *****"
cd "${CONSTRUCT_ROOT}"

# copy the installer for latest
if [[ "${OS_NAME:-}" != "" && "${ARCH:-}" != "" ]]; then
  cp "${CONSTRUCT_ROOT}/build/Deltaforge-"*"-${OS_NAME}-${ARCH}.${EXT}" "${CONSTRUCT_ROOT}/build/Deltaforge-${OS_NAME}-${ARCH}.${EXT}"
fi
