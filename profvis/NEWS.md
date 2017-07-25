profvis 0.3.3
==================

* Fixed [#68](https://github.com/rstudio/profvis/issues/68): Profvis threw an error when a package was installed using `devtools::install_github(args = "--with-keep.source")`.

* Fix bug where, when loading a profile that didn't contain memory data, profvis would throw an error. [#66](https://github.com/rstudio/profvis/pull/66)

* Fixed [#73](https://github.com/rstudio/profvis/issues/73): Profvis would throw an error if used on code sourced from a remote URL.
