COMPILESVG=inkscape

PDFLATEXFLAGS=-halt-on-error -interaction nonstopmode

rules.pdf: rules.tex specs.tex game-rules.tex regulations.tex fig-sidewall.pdf \
           fig-arena.pdf fig-sourcebots.pdf fig-flag.pdf
	pdflatex $(PDFLATEXFLAGS) $<
	pdflatex $(PDFLATEXFLAGS) $<


clean:
	@xargs -t rm -rf <.gitignore

fig-%.pdf: fig-%.svg
ifeq ($(COMPILESVG),inkscape)
	inkscape -A `pwd`/$@ `pwd`/$<
else
ifeq ($(COMPILESVG),svg2pdf)
	svg2pdf $< $@
else
	echo "Unknown COMPILESVG."; false
endif
endif

.PHONY: clean

