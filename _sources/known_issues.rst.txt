************
Known Issues
************

This page features known issues with using Deltaforge.

Windows
#######

Long paths Windows disabled
---------------------------

If long paths are disabled in the registry (which is by default), Deltaforge
can throw you a lot of errors if paths are too long (exceeding 260 characters)
In the error messages, you will see something like:

.. code-block::

    ...
    InvalidArchiveError(... [WinError 206] The filename or extension is too long)
    ...

This is especially common on Windows computational servers. Where the path to
the user folder is something like (behind the scenes):


.. code-block::
    
    C:\\\\SnapVolumesTemp\\\\MountPoints\\\\{85d73492-0000-0000-0000-100000000000}\\\\{VNYC332F-0D0E-12TD-3RD8-533D107F826F}\\\\SVROOT\\\\Users\\\\<username>\\\\...``

To fix this, you can enable long paths in the Windows Registry. To do so,
follow the instructions `written by How To Geek.
<https://www.howtogeek.com/266621/how-to-make-windows-10-accept-file-paths-over-260-characters/>`_
