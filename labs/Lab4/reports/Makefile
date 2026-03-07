all: report.docx report.pdf

report.docx: report.md
	pandoc report.md -o report.docx

report.pdf: report.md
	pandoc report.md --pdf-engine=lualatex -o report.pdf
