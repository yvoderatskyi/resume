clean :
				touch resume.pdf
				rm resume.pdf

docker-build :
				docker build -t latex-build .

build: clean docker-build
				docker run -v ${PWD}:/data -i --rm latex-build /bin/sh -c "pdflatex resume.tex"
