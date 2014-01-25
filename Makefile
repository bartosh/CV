# Generate CV in pdf and html format out of .rst
all: cv.pdf cv.html

cv.pdf:		cv.rst
cf.html:	cv.rst

%.pdf:	%.rst
	rst2pdf $< -o $@

%.html:	%.rst
	rst2html $< $@

clean:
	rm -f cv.pdf cv.html

.PHONY:	clean
