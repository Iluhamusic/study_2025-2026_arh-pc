FILES = report.docx report.pdf

%.docx: %.md
	pandoc "$<" --number-sections -o "$@"

%.pdf: %.md
	pandoc "$<" --pdf-engine=lualatex --number-sections -o "$@"

all: $(FILES)

clean:
	rm -f $(FILES) *~
