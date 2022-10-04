# `deltaforge`

`deltaforge` builds installers for commonly used Deltares Python packages.
Currently supported are:

 - [iMOD Python](https://deltares.gitlab.io/imod/imod-python)
 - [Hydro MT](https://deltares.github.io/hydromt/latest)
 - [Hydro MT WFLOW plugin](https://deltares.github.io/hydromt_wflow/latest/)
 - [Hydro MT SFINCS plugin](https://deltares.github.io/hydromt_sfincs/latest/)

Experience has shown that these packages can be difficult to install for new
users, because it requires:

1. Using a shell (scary! :ghost:)
2. Knowledge of `conda`/`mamba`
3. Installing a lot of dependencies, where something breaks every now and then

The installer built with `deltaforge` aids new users by installing a conda base
environment with all the required Python packages installed. The installer thus
helps circumventing issues 1 and 2, and hopefully issue 3. 

## Building installer

The installer is built with `conda`'s
[`constructor`](https://github.com/conda/constructor). So first, make sure you
have installed `constructor` in your `base` environment:

    $ conda deactivate
    $ conda install constructor

Next, run:

    $ cd deltaforge
    $ constructor .

This will built the installer, which should take around 10 minutes :stopwatch:.

## Credits

This repository is heavily inspired by
[miniforge/mambaforge](https://github.com/conda-forge/miniforge). For a much
leaner setup, look at their project. 