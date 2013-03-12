fontconf, a.k.a. fontconfig-infinality-ultimate
===============================================

Font configuration files (Infinality & friends).

**Quick install instructions**

1. Clone this repository.
2. Issue ``cd freetype2-infinality && makepkg -i``.
3. Replace the content of your ``/etc/fonts`` with the content from ``etc-fonts`` in this repo. (**WARNING:** before doing so, make sure you have a backup of the original content in case there are any important customizations you may still need.)

**Further customization and misc options**

If you have already installed ``freetype2-infinality`` from the AUR, you can skip step 2.

If you are using Arch Linux, you may want to install the package `fontconfig-infinality-ultimate`_ (skip step 1).

The configuration defaults to MS core fonts, so make sure you have already installed them. (For best results use the most recent MS fonts.) In case you don't have them or don't want to use them, modify ``20-aliases-default.conf`` and replace default sans, serif and mono entries so that they meet you system's specs. If necessay, provide any further font substituions in ``41-repl-os.conf``, ``42-repl-global.conf`` and ``21-aliases-wine.conf``.

If you want to force fontconfig to use a particular typeface for a specified language, you can do so in ``81-final-lang-spec.conf`` (working examples have been provided).

If you are using a desktop environment (KDE, Gnome) that lets you adjust font settings on its own, you can duplicate the base values as found in ``/etc/fonts/infinality/conf.d/50-base-rendering.conf``.

If you are in need of good looking fonts but you aren't sure which to choose, see a brief list of my favourite free specimen `here <https://github.com/bohoomil/fontconf/wiki/Free-font-recomendations>`_ (to be updated).

.. _fontconfig-infinality-ultimate: https://aur.archlinux.org/packages/fontconfig-infinality-ultimate/



.. meta:: <a rel="license" href="http://creativecommons.org/licenses/by/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by/3.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 Unported License</a>.


__

[[https://raw.github.com/bohoomil/fontconf/master/cc.png]]
   

.. This work is licensed under a `Creative Commons Attribution 3.0 Unported License <http://creativecommons.org/licenses/by/3.0>`_.

