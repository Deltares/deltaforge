# Deltaforge

![Deltaforge logo](icons/deltaforge_icon.png)

## What is it?

Deltaforge is a Windows installer of selected [Deltares](https://www.deltares.nl/en/).
python packages and their dependencies.
This makes the process of installing iMOD Python significantly easier.

## Getting Started

You can download the signed installer here on [oss.deltares.nl](https://download2.deltares.nl/imod-suite/).
After downloading, simply start the installer and follow the instructions.

You can start an environment with all correct paths via the `Deltaforge Prompt` that can be found in your start menu.
From here you can start your editor so that the editor can find the installed components.
You can also directly call `python` to start an interactive python terminal.

## What's included?

Deltares packages currently included are:

* [iMOD Python](https://deltares.gitlab.io/imod/imod-python)
* [xugrid](https://deltares.github.io/xugrid/)
* [gistim](https://github.com/Deltares/QGIS-Tim)

Important non-Deltares packages included in Deltaforge are:

* [numpy](https://numpy.org/)
* [matplotlib](https://matplotlib.org/)
* [pandas](https://pandas.pydata.org/)
* [geopandas](https://geopandas.org/en/stable/)
* [rasterio](https://rasterio.readthedocs.io/en/latest/index.html)
* [shapely](https://shapely.readthedocs.io/en/stable/manual.html)
* [xarray](https://xarray.dev/)
* [snakemake](https://snakemake.readthedocs.io/en/stable/)
* [spyder](https://www.spyder-ide.org/)
* [timml](https://mbakker7.github.io/timml/docs/builddocs/html/index.html)
* [ttim](https://mbakker7.github.io/ttim/docs/builddocs/html/index.html)

## Why?

Experience has shown that these packages can be difficult to install for new users, because it requires:

1. Using a shell
2. Knowledge of `conda` / `mamba` / `pixi` / `uv` / `pip`.
3. Installing a lot of dependencies, where something breaks every now and then.
4. Installing python packages without access to `conda-forge` or `PyPi` is cumbersome.
   Some computational servers have no direct internet connection.

The Deltaforge installer aids new users by installing a conda base environment
with all the required Python packages installed. These packages are contained in
the executable. The installer thus helps circumventing the four issues mentioned
above.

## Contributing

The tasks and dependencies for this package are handled via [pixi](https://pixi.sh/latest/).
The `installer` environment is only used for the pixi-pack command to create the packages that are to be installed.
The `default` environment is used to actually perform the tasks of creating an installer.

To build an installer from scratch, `pixi pack` needs to be run, and after that `dotnet build`.
This can be done in one go via `pixi run create`.

Other useful commands for testing are `pixi run build` (not packing every time), `pixi run test-install` and `pixi run test-uninstall` (create log files in the repo directory).
