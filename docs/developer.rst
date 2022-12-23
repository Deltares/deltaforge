***************
Developer guide
***************

Including a package
-------------------

If you want a python package included in Deltaforge, there are the following
requirements:

* The package is released on `conda-forge <https://conda-forge.org/>`_
* The package has a license which allows us to distribute it freely
* The package dependency requirements need to be compatible with the already
  included packages

If this is the case, you can post an issue 
`on our issueboard. <https://github.com/Deltares/deltaforge/issues>`_

Or you can add it to the ``construct.yaml`` file under ``specs``, and open up a
pull request.

Building locally
----------------

Building Deltaforge at present is slightly tricky, as ``constructor`` is not
fully compatible with the latest features of ``conda`` yet.

Deltaforge is built with the package `constructor
<https://github.com/conda/constructor/>`_. However, Deltaforge has a lot of
dependencies to include, for which the standard ``conda`` solver is too slow.
Luckily for us, the ``libmamba`` solver `is recently added to conda.
<https://www.anaconda.com/blog/conda-is-fast-now>`_ However, ``constructor``
does not support the plugin structure introduced in ``conda 20.11`` yet. But our
way out is using the ``conda 20.9`` installation, which included ``libmamba`` as
an experimental solver. In addition, ``constructor`` hasn't released a version
yet which support experimental solvers, so we have to ``pip`` directly from
Github.

**TL;DR**, these are the commandos required to build Deltaforge at present (22-12-2022):

.. code-block:: shell
    
    conda deactivate
    conda install conda-libmamba-solver conda=20.9
    conda config --set experimental_solver libmamba
    pip install git+https://github.com/conda/constructor@fd028c8
    constuctor .

Signing
-------

The installers are signed with the Deltares certificate on Deltares servers. At
present, these are not pushed back to Github, so the built installers listed on
Github under `release <https://github.com/Deltares/deltaforge/releases>`_ are
unsigned. Windows will throw warnings to users when using unsigned installers.