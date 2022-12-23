##########
Deltaforge
##########

What is it?
-----------

Deltaforge is an installer of selected `Deltares <https://www.deltares.nl/en/>`_
python packages and their dependencies. 

Where?
------
You can download the installer here:


What's included?
----------------

Packages currently included are:

* `iMOD Python <https://deltares.gitlab.io/imod/imod-python>`_
* `Hydro MT <https://deltares.github.io/hydromt/latest>`_
* `Hydro MT WFLOW plugin <https://deltares.github.io/hydromt_wflow/latest/>`_
* `Hydro MT SFINCS plugin <https://deltares.github.io/hydromt_sfincs/latest/>`_
* `xugrid <https://deltares.github.io/xugrid/>`_

Important non-Deltares packages included in Deltaforge are:

* `numpy <https://numpy.org/>`_
* `matplotlib <https://matplotlib.org/>`_
* `pandas <https://pandas.pydata.org/>`_
* `geopandas <https://geopandas.org/en/stable/>`_
* `rasterio <https://rasterio.readthedocs.io/en/latest/index.html>`_
* `shapely <https://shapely.readthedocs.io/en/stable/manual.html>`_
* `xarray <https://xarray.dev/>`_
* `snakemake <https://snakemake.readthedocs.io/en/stable/>`_
* `spyder <https://www.spyder-ide.org/>`_

Why?
----
Experience has shown that these packages can be difficult to install for new
users, because it requires:

1. Using a shell
2. Knowledge of ``conda`` / ``mamba``
3. Installing a lot of dependencies, where something breaks every now and then
4. Installing python packages without access to ``conda-forge`` or `PyPi` is
   cumbersome. Some computational servers have no direct internet connection. 

The Deltaforge installer aids new users by installing a conda base environment
with all the required Python packages installed. These packages are contained in
the executable. The installer thus helps circumventing the four issues mentioned
above.

.. toctree::
   :titlesonly:
   :hidden:

   user-guide
   developer