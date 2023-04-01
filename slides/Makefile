.SUFFIXES: .tex .pdf

%.pdf: %.tex
	xelatex --shell-escape $?
	xelatex --shell-escape $?
	git add $@ $^

all: 01_0.Analog_Digital.pdf 02_0.Prehistoric_Aiken_Neumann.pdf 03_0.Buses_Peripherals.pdf \
     04_0.Async_Buses.pdf 05_0.Clocking_Bit_Width.pdf 06_0.Memory_Models.pdf 07_0.Schematics_Basics.pdf \
     08_0.State_Logics.pdf

clean:
	-rm *.aux *.log *.nav *.out *.toc *.vrb *.snm *.synctex.gz
	-rm -rf _minted-* svg-inkscape

cleanall: clean
	-rm *.pdf
