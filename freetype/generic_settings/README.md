
This is the generic `infinality-settings.sh` configuration file, as found
in the original (i.e. pre-bundle) Infinality releases.

Use it for educational purposes and as a template for creating custom
runtime settings.

Note that although `fontconfig-infinality-ultimate` is technically a
distro-agnostic library and can be used with customized Infinality settings,
it may be necessary to modify those configuration files in which rendering
instructions for particular font families are specified:

* 90-tt-foo.conf
* 90-non-tt-foo.conf
* 92-selective-rendering-foo.conf
* 93-final-rendering.conf
* 94-no-synthetic.conf

When necessary, `infinality-settings.sh` will be updated to preserve
compatibility with future releases of Infinality and freetype2.

