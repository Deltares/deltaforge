**********
User Guide
**********

Windows
#######

Installation
------------

To install Deltaforge, double-click the executable, this will open the
installation Wizard. You will be greeted with the welcome screen.

.. figure:: screenshots/install/1_welcome_screen.png

   The welcome screen

Click "Next", and then "I agree" in the license agreement.

.. figure:: screenshots/install/2_license.png

   License agreement screen

Next, you get to decide what type of installation you want. On your local
machine it suffices to select `Just me`. If you are an admin of a server and you
want to let others enjoy the Deltaforge installation as well, click `All Users`.

.. figure:: screenshots/install/3_installation_type.png

   The installation type screen

Next you get to decide where the python environment is installed.
The default location is usually fine.

.. figure:: screenshots/install/4_install_location.png

   The location of the python installation

Finally, some further configuration is possible. The screenshots contains the
options we recommend.

.. figure:: screenshots/install/5_installation_options.png

   Installation options with the recommended options selected.

Using Deltaforge
----------------

The easiest way to start your environment is by pressing the Windows Key and
start typing `deltaforge`. This will let you select the `Deltaforge Prompt`.
Select this.

.. figure:: screenshots/user-guide/6_deltaforge_start_menu.png

   The Deltaforge Prompt should be findable in the Windows start menu

This will start a command prompt screen (``cmd.exe``), where at startup the
Deltaforge python environment is activated. 

.. figure:: screenshots/user-guide/7_deltaforge_prompt.png

    The Deltaforge prompt. You can type ``mamba list`` to view all the packages
    installed.

To view all the packages installed in the environment you can type ``mamba
list`` and press Enter. This will list all packages installed in the
environment. If you want to start coding, you can type ``spyder``, which will
start Spyder, a Python scientific development environment.

Uninstalling Deltaforge
-----------------------

To install Deltaforge, navigate to your installation folder. By default the
installation folder is under ``C:/Users/<your_name>/Appdata/Local/deltaforge``.
If you cannot find it, open the Deltaforge prompt, type ``mamba info``, which
will the location of the Deltaforge installation after the ``base environment``
keyword.

Once you found the installation folder, double click
``Uninstall-Deltaforge.exe`` to start it. The uninstall wizard will guide you
through the uninstallation.

MacOS
#####

This is still something on our TODO list.

Linux
#####

This is still something on our TODO list.
