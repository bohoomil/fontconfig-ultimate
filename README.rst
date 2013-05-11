fontconfig-{infinality}-ultimate-git
====================================

Font configuration files (Infinality & friends).

**Quick install instructions**

1. Clone this repository.
2. Issue ``cd freetype2-infinality && makepkg -i``.
3. Replace the content of your ``/etc/fonts`` with the content from ``etc-fonts`` in this repo. (**WARNING:** before doing so, make sure you have a backup of the original content in case there are any important customizations you may still need.)

**Installation instructions for Arch Linux users**
**(should be suiltable for Arch Linux derivatives, too)**

If you are an Arch Linux user, or if you are using one of the Arch Linux derivative, you may want to use pre-compiled packages from the [infinality-bundle] repository I maintain. This is a recommended approach in majority of cases as it offers the full functionality offered by Infinality patches and the ultimate configuration, without typical post-install steps. For more information, see:

* `infinality-bundle user notes <http://bohoomil.github.io/ib.html>`_ (general information about infinality-bundle),

* `Font Configuration - Infinality: the easy way <https://wiki.archlinux.org/index.php/Font_Configuration#Infinality:_the_easy_way>`_ (quick install notes)

* `Arch Linux Forums <https://bbs.archlinux.org/viewtopic.php?id=162098>`_ (a support thread).

Source packages, including PKGBUILD scripts, are available `in the src directory <http://bohoomil.byethost16.com/infinality-bundle/src/>`_.

  | **CAUTION**
  | Make sure your distribution has been fully updated and is using 
  | the most recent libraries as present in the official Arch Linux 
  | repositories. Using outdated system components with the bundle 
  | is not recommended as it may severely break your system.

If you prefer going the generic way, i.e. install ``freetype2-infinality`` from the AUR and a regular fontconfig package from the [extra] repository, you can skip step 1 (you will only need to download `infinality-settings.sh`_ and overwrite the one that comes with ``freetype2-infinality``: it can be found in ``/etc/profile.d``) and install the git version of fontconfig-infinality-ultimate -- `fontconfig-infinality-ultimate-git`_. 

**Further customization and misc options**

The configuration defaults to MS core fonts, so make sure you have already installed them. (For best results use the most recent MS fonts.) In case you don't have them or don't want to use them, modify ``20-aliases-default.conf`` and replace default sans, serif and mono entries so that they meet you system's specs. If necessay, provide any further font substituions in ``41-repl-os.conf``, ``42-repl-global.conf`` and ``21-aliases-wine.conf``.

If you want to force fontconfig to use a particular typeface for a specified language, you can do so in ``81-final-lang-spec.conf`` (working examples have been provided).

If you are using a desktop environment (KDE, Gnome) that lets you adjust font settings on its own, you can duplicate the base values as found in ``/etc/fonts/infinality/conf.d/50-base-rendering.conf``.

A more comprehensive documentation is being written at the moment and once it is
finished, it will be made public.

If you are in need of good looking fonts but you aren't sure which to choose, see a brief list of my favourite free specimen `here <https://github.com/bohoomil/fontconf/wiki/Free-font-recomendations>`_ (to be updated).

.. _fontconfig-infinality-ultimate-git: https://aur.archlinux.org/packages/fontconfig-infinality-ultimate-git/

.. _infinality-settings.sh: https://github.com/bohoomil/fontconfig-ultimate/blob/master/etc-profile.d/infinality-settings.sh

----

**License**

This work is licensed under a `Creative Commons Attribution 3.0 Unported License <http://creativecommons.org/licenses/by/3.0>`_.

