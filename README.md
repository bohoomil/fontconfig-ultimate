fontconf
========

Font configuration files (Infinality &amp; friends).

**Quick install instructions**

1. Clone this repository.
2. Issue ``cd fontconf/1-freetype2 && makepkg -i``.
3. Replace the content of your ``/etc/fonts`` with the content from ``etc-fonts`` in this repo. (**WARNING:** before doing so, make sure to backup the original content in case there are any important customizations you may still need.)

**Further customizations**

The configuration defaults to MS core fonts, so make sure you have already installed them. (For best results use the most recent MS fonts.) In case you don't have them or don't want to use them, modify ``20-aliases-default.conf`` and replace default sans, serif and mono entries so that they meet you system's specs. If necessay, provide any further font substituions in ``41-repl-os.conf``, ``42-repl-global.conf`` and ``21-aliases-wine.conf``.

