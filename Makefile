clean :
				touch resume.pdf
				rm resume.pdf

docker-build :
				docker build -t latex-pdf-build .

build: clean docker-build
				docker run -v ${PWD}:/data -i --rm latex-pdf-build /bin/sh -c "pdflatex resume.tex"
				sudo chmod a+rw resume.pdf

