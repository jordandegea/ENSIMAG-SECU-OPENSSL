OUT_NAME=HEARTBLEED_DANTIGNY_DEGEA_DUCLOT

all:
	@echo "hum, nope"

doc: 
	cd rapport && pdflatex -q rapport.tex > /dev/null

package: doc
	mkdir -p ${OUT_NAME}/experimentation
	cp -R experimentation/Vagrantfile ${OUT_NAME}/experimentation/
	cp README.md ${OUT_NAME}/
	cp rapport/rapport.pdf ${OUT_NAME}/
	tar -cvf ${OUT_NAME}.tar.gz ${OUT_NAME}
	rm -Rf ${OUT_NAME}