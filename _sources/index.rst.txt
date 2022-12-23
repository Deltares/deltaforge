##########
Deltaforge
##########

.. figure:: ../deltaforge/deltaforge_icon.png
   :width: 100px
   :height: 100px
   :scale: 75%
   :align: right


What is it?
-----------

Deltaforge is an installer of selected `Deltares <https://www.deltares.nl/en/>`_
python packages and their dependencies. This makes the process of installing for
example iMOD Python or HydroMT significantly easier.

Where?
------

* `You can download the signed installer here on oss.deltares.nl <https://download.deltares.nl/en/download/imod-viewer/>`_
* `The unsigned installer can be dowloaded from Github <https://github.com/Deltares/deltaforge/releases>`_

.. note::

   Windows will throw warnings to users when using *unsigned* installers, and,
   with stricter security settings, might not even allow installations.


What's included?
----------------

Deltares packages currently included are:

* `iMOD Python <https://deltares.gitlab.io/imod/imod-python>`_
* `HydroMT <https://deltares.github.io/hydromt/latest>`_
* `HydroMT WFLOW plugin <https://deltares.github.io/hydromt_wflow/latest/>`_
* `HydroMT SFINCS plugin <https://deltares.github.io/hydromt_sfincs/latest/>`_
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

Credits
-------

This repository is heavily inspired by, and uses slightly modified scripts from,  
`miniforge/mambaforge <https://github.com/conda-forge/miniforge>`_. For a much
leaner setup, check out their project. 

.. toctree::
   :titlesonly:
   :hidden:

   user-guide
   developer


Logos
-----

.. raw:: html

   <br/>
   <a class="reference external image-reference" href="https://www.deltares.nl">
      <img src="_static/deltares.svg" style="height:60px;"/>
      <br/>
      <img src="_static/enabling-delta-life.svg" style="height:60px;"/>
   </a>