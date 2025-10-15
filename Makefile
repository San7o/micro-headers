INDEX_FILE=README
HTML_INTRO=html/intro.html
HTML_OUTRO=html/outro.html
OUT_INDEX_FILE=html/index.html
TMP_FILE=.tmp
PANDOC_FLAGS=

all: html

# Documentation is not automatically generated anymore
#.PHONY: html
#html:
#	pandoc ${INDEX_FILE} -o ${TMP_FILE} ${PANDOC_FLAGS}
#	cp ${HTML_INTRO} ${OUT_INDEX_FILE}
#	cat ${TMP_FILE} >> ${OUT_INDEX_FILE}
#	cat ${HTML_OUTRO} >> ${OUT_INDEX_FILE}
#	rm ${TMP_FILE}

.PHONY: update
update:
	git submodule update --recursive --remote
