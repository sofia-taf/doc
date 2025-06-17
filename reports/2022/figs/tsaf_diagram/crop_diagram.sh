libreoffice --convert-to pdf tsaf_diagram.odp
pcrop tsaf_diagram.pdf 72:117 540:744
out tsaf_diagram

2png -a4 -b4 -d300 tsaf_diagram.pdf
mogrify -crop 2640x1960+470+220 tsaf_diagram.png
optipng tsaf_diagram.png
