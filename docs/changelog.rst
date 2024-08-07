*********
Changelog
*********

Conscious changes to Deltaforge are described here. Note that with each
version, the latest versions of packages of that moment are installed if left
unspecified in the ``construct.yaml`` file. The latest version of which can be
found in :ref:`include-pkg`.

v0.7.0 [08-08-2024]
###################

- Include Ribasim Python
- Enforce ribasim >= 2024.10.0

v0.6.0 [20-03-2024]
###################

- Update python to 3.11
- Update iMOD Python to 0.15.3
- Update timml to 6.4.1
- Update ttim to 0.6.6
- Enforce xarray >= 2023.08.0
- Enforce numba >= 0.50
- Enforce rasterio >= 1.0

v0.5.0 [26-11-2023]
###################

- Add pymetis as dependency
- Update iMOD Python to 0.15.0
- Update timml to 0.6.2
- Update gistim to 0.5.0

v0.4.0 [08-05-2023]
###################

- Add hydromt_delwaq plugin
- Update iMOD Python to 0.13.1
- Update xugrid to 0.4.0
- Update HydroMT Sfincs plugin to 1.0

v0.3.1 [22-03-2023]
###################

- Bump gistim to version 0.4.1

v0.3 [22-03-2023]
#################

- Add gistim 0.4.0 as dependency
- Update iMOD Python to 0.12
- Enforce shapely >= 2.0
- Enforce snakemake >= 7.19.0, fixing a tedious bug on Windows

v0.2 [22-12-2022]
#################

- Add Spyder into environment
- Update iMOD Python to 0.11.5
- Include xugrid
- Enforce shapely >=0.11.8, <0.12

v0.1 [17-11-2022]
#################

- Initial release with iMOD Python and HydroMT
