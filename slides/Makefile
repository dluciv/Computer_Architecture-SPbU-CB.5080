.SUFFIXES: .tex .pdf

%.pdf: %.tex
	# У кого нет latexmk
	# xelatex --shell-escape $?
	# xelatex --shell-escape $?
	latexmk -shell-escape -xelatex $?
	# tectonic -Z shell-escape $? # Пока не побороли inkscape...
	git add $@ $^

all: 01_0.Analog_Digital.pdf 02_0.Prehistoric_Aiken_Neumann.pdf 03_0.Buses_Peripherals.pdf \
     04_0.Async_Buses.pdf 05_0.Clocking_Bit_Width.pdf 06_0.Memory_Models.pdf 07_0.Schematics_Basics.pdf \
     08_0.State_Logics_Plexors.pdf 09_0.Memory_FPGA.pdf 10_0.Storage.pdf \
     11_0.CPU_General_Pipelining.pdf 12_0.X86_RISCV.pdf

clean:
	-rm *.aux *.log *.nav *.out *.toc *.vrb *.snm *.synctex.gz *.fls *.fdb_latexmk *.xdv
	-rm -rf _minted-* svg-inkscape

cleanall: clean
	-rm *.pdf
