fontconfig-{infinality}-ultimate
--------------------------------

Font configuration files, patches, scripts and source packages (Infinality & friends)
-----

Quick installation instructions
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

**I. If you are an Arch Linux user, or if you are using one of the Arch Linux derivatives,** you may want to use pre-compiled packages from the [infinality-bundle] repository I maintain. This is a recommended approach in a majority of cases as it gives access to the entire functionality offered by Infinality patches and the ultimate configuration without a typical post installation routine. For more information, see:

* `infinality-bundle user notes <http://bohoomil.cu.cc/>`_ (general information about infinality-bundle, needs update),

* `Infinality-bundle+fonts <https://wiki.archlinux.org/index.php/Infinality-bundle+fonts>`_ (install notes, troubleshooting)

* `infinality-bundle: good looking fonts made (even) easier <https://bbs.archlinux.org/viewtopic.php?id=162098>`_ (official infinality-bundle support thread for Arch Linux users)

* `infinality-bundle-fonts: a free multilingual font collection for Arch <https://bbs.archlinux.org/viewtopic.php?id=170976>`_ (official infinality-bundle-fonts support thread)

Source packages, including PKGBUILD scripts, are available `in the src directory <http://ibn.net63.net/infinality-bundle/src/>`_.

  | **CAUTION**
  | Make sure your distribution has been fully updated and is using 
  | the most recent libraries as present in the official Arch Linux 
  | repositories. Using outdated system components with the bundle 
  | is not recommended as it may severely break your system.

**II. If you still prefer or have to go the generic way,** i.e. install ``freetype2-infinality`` from the AUR, you can use  `fontconfig-infinality-ultimate-git`_ and build it on your own. The git version may be less stable than the one available in my repository since it is a testing ground for future ``fontconfig-infinality-ultimate`` official releases. When you are done with insatllation, you will have to copy custom ``infinality-settings.sh`` from ``/usr/share/doc/fontconfig-infinality-ultimate-git/freetype`` to ``/etc/profile.d`` and replace the one that came with the non-bundle ``freetype2-infinality``.

**III. If you are using any Linux distribution but Arch Linux or its derivative,** you can use all available resources here to rebuild ``fontconfig`` package available in your distribution. (For pre-2.10.93 versions of stock ``fontconfig``--especially version 2.10.92--check the ``infinality-bundle`` branch of this repo for compatible patches.) Building a patched version of ``fontconfig`` should be relatively easy: all you will need is appropriate ``src`` and ``devel`` packages and libraries and your favourite text editor to modify the build script. You can always use Arch's PKGBUILD as a model to follow. If you have questions, please consult your distro's documentation and community.
   
  | **CAUTION**
  | Before installing any patched version ``fontconfig``, backup the whole
  | ``/etc/fonts`` directory in case something goes wrong and you are sure
  | it has nothing to do with your local ``fontconfig`` configuration, usually 
  | available in ``$HOME/.config/fontconfig``. This way you can simply revert
  | your setup to its previous state.

  | **NOTE**
  | Start troubleshooting by temporarily disabling your local ``fontconfig``
  | configuration. It may be possible that your personal configuration overrides
  | and interferes with global ``fontconfig`` settings.

Last but not least, don't forget to copy custom ``infinality-settings.sh`` from ``/usr/share/doc/fontconfig-infinality-ultimate-git/freetype`` to ``/etc/profile.d`` and replace the one that came with the non-bundle ``freetype2-infinality``.

  | **NOTE**
  | You will need at least ``freetype2-infinality`` version ``2.4.11``.

Further customization and misc options
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Any changes to the global ``fontconfig-ultimate`` settings should be introduced on a per-user ground in a local ``$HOME/.config/fontconfig`` directory. Please, consult ``/usr/share/doc/fontconfig-infinality-ultimate{-git}/fontconfig`` for examples and templates you will need to start tweaking.

The configuration defaults to MS core fonts, so make sure you have already installed them. (For best results use the most recent MS fonts.) In case you don't have them or don't want to use them, modify your local copy of ``60-latin.conf`` and ``65-non-latin.conf`` and set your default font faces there.

If you want to force fontconfig to use a particular typeface for a specified language, you can do so in ``81-final-lang-spec.conf`` (working examples have been provided).

If you are using a desktop environment (KDE, Gnome) that lets you adjust font settings on its own, you can duplicate the base values as found in ``/etc/fonts/conf.d/10-base-rendering.conf``.

If you are in need of good looking fonts but you aren't sure which to choose, see a brief list of my favourite free specimen `here <https://github.com/bohoomil/fontconf/wiki/Free-font-recomendations>`_ (to be updated).

.. _fontconfig-infinality-ultimate-git: https://aur.archlinux.org/packages/fontconfig-infinality-ultimate-git/

----

License
.......

This work is licensed under a `Creative Commons Attribution 3.0 Unported License <http://creativecommons.org/licenses/by/3.0>`_.

