TEX = pandoc
src = template.tex cv.yml
FLAGS = --pdf-engine=xelatex

cv.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

cv.tex : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm cv.pdf
