.SUFFIXES: .tex .pdf

../slides.pdf/%.pdf: %.tex
	# У кого нет latexmk
	# xelatex --shell-escape $?
	# xelatex --shell-escape $?
	# tectonic -Z shell-escape $? # Пока не побороли inkscape...
	latexmk -shell-escape -xelatex $?
	mv $(subst ../slides.pdf/,./,$@) ../slides.pdf
	git add $^
	git add $@

all: ../slides.pdf/01_0.Analog_Digital.pdf ../slides.pdf/02_0.Prehistoric_Aiken_Neumann.pdf ../slides.pdf/03_0.Buses_Peripherals.pdf \
     ../slides.pdf/04_0.Async_Buses.pdf ../slides.pdf/05_0.Clocking_Bit_Width.pdf ../slides.pdf/06_0.Memory_Models.pdf ../slides.pdf/07_0.Schematics_Basics.pdf \
     ../slides.pdf/08_0.State_Logics_Plexors.pdf ../slides.pdf/09_0.Memory_FPGA.pdf ../slides.pdf/10_0.Storage.pdf \
     ../slides.pdf/11_0.CPU_General_Pipelining.pdf ../slides.pdf/12_0.X86_RISCV.pdf

clean:
	-rm *.aux *.log *.nav *.out *.toc *.vrb *.snm *.synctex.gz *.fls *.fdb_latexmk *.xdv
	-rm -rf _minted _minted-* svg-inkscape

cleanall: clean
	-rm ../slides.pdf/*.pdf
