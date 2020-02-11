#!/bin/sh

set -ev

Rscript -e "install.packages('tinytex')"
Rscript -e "tinytex::install_tinytex()"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"
Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"

