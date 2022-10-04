# iMODforge

iMODforge builds installers for the iMOD Python package. Experience has shown
that iMOD Python can be difficult to install for new users, because it requires:

1. Using a shell (scary! :ghost:)
2. Knowledge of `conda`/`mamba`
3. Installing a lot of dependencies, where something breaks every now and then

The installer built with iMODforge aids new users by installing a conda base
environment with all the required Python packages installed, including iMOD
Python. The installer thus helps circumventing issues 1 and 2, and hopefully
issue 3. 

## Building installer

The installer is built with `conda`'s
[`constructor`](https://github.com/conda/constructor). So first, make sure you
have installed `constructor` in your `base` environment:

    $ conda deactivate
    $ conda install constructor

Next, run:

    $ cd imodforge
    $ constructor .

This will built the installer, which should take around 10 minutes :stopwatch:.
