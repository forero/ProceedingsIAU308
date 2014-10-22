LATEX = pdflatex
MAIN  = ForeroRomero

all:	$(MAIN).pdf

$(MAIN).pdf: 	$(MAIN).tex
	$(LATEX) $(MAIN).tex 
	$(LATEX) $(MAIN).tex 

clean:
	rm -f $(MAIN).aux
	rm -f $(MAIN).ps
	rm -f $(MAIN).pdf
	rm -f $(MAIN).blg
	rm -f $(MAIN).log
	rm -f $(MAIN).zip
	rm -f *~

zip:	
	zip $(MAIN).zip $(MAIN).tex *.eps Makefile Signed_Copyright.pdf $(MAIN).pdf iau.cls

view: 
	open $(MAIN).pdf &

