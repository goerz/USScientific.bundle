.PHONY: web all clean distclean

WEB = web/us_scientific_normal.png web/us_scientific_alt.png web/us_scientific_acute.png web/us_scientific_doublestruck.png web/us_scientific_grave.png web/us_scientific_greek.png web/us_scientific_mathscript.png web/us_scientific_mathbold.png web/us_scientific_slash.png web/us_scientific_subscript.png web/us_scientific_superscript.png
ALL = $(WEB) USScientific.pdf

all: $(ALL)

web:
	mkdir -p web
	make $(WEB)

web/us_scientific_normal.png: pics/normal-lc.png pics/normal-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_alt.png: pics/option-lc.png pics/option-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_acute.png: pics/acute-lc.png pics/acute-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_doublestruck.png: pics/doublestruck-lc.png pics/doublestruck-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_grave.png: pics/grave-lc.png pics/grave-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_greek.png: pics/greek-lc.png pics/greek-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_mathscript.png: pics/mathscript-lc.png pics/mathscript-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_mathbold.png: pics/mathbold-lc.png pics/mathbold-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_slash.png: pics/slash-lc.png pics/slash-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_subscript.png: pics/subscript-lc.png pics/subscript-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

web/us_scientific_superscript.png: pics/superscript-lc.png pics/superscript-shift.png
	montage $^ -resize 50% -tile 2x1 -geometry +0+0 $@

USScientific.pdf: USScientific.tex $(WEB)
	pdflatex $< $@

clean:
	rm -f USScientific.log
	rm -f USScientific.out
	rm -f USScientific.aux

distclean: clean
	rm -f $(WEB)
	rm -f USScientific.pdf
