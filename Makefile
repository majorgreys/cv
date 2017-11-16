TEX = pandoc
src = template.tex cv.yml
FLAGS = --pdf-engine=xelatex

cv.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

cv.docx : $(src)
	$(TEX) $(filter-out $<,$^ ) -t latex --template=$< $(FLAGS) | pandoc -f latex -o $@ 

.PHONY: clean
clean :
	rm cv.pdf
