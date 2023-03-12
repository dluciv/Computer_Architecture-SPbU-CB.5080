.SUFFIXES: .tex .pdf

%.pdf: %.tex
	xelatex --shell-escape $<
	xelatex --shell-escape $<

all: 01_0.Analog_Digital.pdf 02_0.Prehistoric_Aiken_Neumann.pdf 03_0.Buses_Peripherals.pdf 04_0.Async_Buses.pdf 05_Clocking-Bit_Width.pdf

clean:
	-rm *.aux *.log *.nav *.out *.toc *.vrb *.snm *.synctex.gz
	-rm -rf _minted-* svg-inkscape

cleanall: clean
	-rm *.pdf
