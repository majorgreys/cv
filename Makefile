TEX = pandoc
FLAGS = --pdf-engine=xelatex

all: cv.pdf resume.pdf

cv.pdf : template.tex cv.yml
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

resume.pdf : resume-template.tex cv.yml
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm cv.pdf
