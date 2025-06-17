#!/bin/bash

# Select page and crop figure
pdfselect sofia2020.pdf 64
out 64
pcrop 64.pdf 403:52 623:516
out fig19

# Remove gray background
# open with Inkscape, selecting Poppler/Cairo external library
# right-click, ungroup, select and remove gray background
# save
