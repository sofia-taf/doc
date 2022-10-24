# SOTIA-TAF Tutorial

## How to run

First install the main packages (sraplus, TAF, SOFIA):

```
library(remotes)
install_github("DanOvando/sraplus")
install.packages("TAF")
install_github("sofia-taf/SOFIA")
```

The [sraplus](https://github.com/DanOvando/sraplus) package has many underlying
package [dependencies](README_dependencies.md) that should install
automatically.

Then clone/download a SOFIA analysis, for example:

https://github.com/sofia-taf/2022Area37Demo

Open R in the `2022Area37Demo` directory and run:

```
library(TAF)
taf.bootstrap()
sourceAll()
```

The `sourceAll` function runs the TAF scripts sequentially in alphabetical
order:

```
data.R
model.R
output.R
report.R
```

## Explore results

The results from each script appear in the corresponding working subdirectory.
For example, the `data.R` script writes data tables and plots into a folder
called `data`. The results from the analysis are found in the `model` folder
(sraplus results object), `output` folder (detailed tables) and `report` folder
(plots and summary tables).

## Back to basics

For a minimal example of TAF, a simple linear regression (LM) demo is available
at:

https://github.com/PacificCommunity/ofp-sam-taf-demo

This analysis has no software dependencies and can be useful for studying the
mechanics and features of TAF analyses, without the additional complexity of the
`sraplus` model.

## Learn more

https://github.com/ices-taf/doc has links to TAF documentation.

The [package help page](https://rdrr.io/cran/TAF/man/TAF-package.html) shows a
complete list of R functions in the TAF package. At the bottom of the package
help page there is also a list of references:

- ICES Transparent Assessment Framework: https://taf.ices.dk.
- To explore example TAF stock assessments, see the introductory
  [video](https://www.youtube.com/watch?v=FweJbr9hfdY) and
  [tutorial](https://github.com/ices-taf/doc/tree/master/tutorial-1/README.md).
- The [TAF Wiki](https://github.com/ices-taf/doc/wiki) provides additional help
  resources.

In an R session, the package help page can be brought up with the command
`?TAF`.

## TAF discussion points

See [taf_discussion.md](taf_discussion.md).
