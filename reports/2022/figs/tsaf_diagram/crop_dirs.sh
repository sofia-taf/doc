libreoffice --convert-to pdf tsaf_dirs.odp
pcrop tsaf_dirs.pdf 180:45 510:475
out tsaf_dirs

2png -a4 -b4 -d300 tsaf_dirs.pdf
mogrify -crop 1800x1400+185+345 tsaf_dirs.png
optipng tsaf_dirs.png
