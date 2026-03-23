LATEX = xelatex
BIBTEX = bibtex
MAIN = main

.PHONY: all setup clean help

all: compile

compile:
	@echo "Compiling $(MAIN).tex..."
	$(LATEX) -interaction=nonstopmode $(MAIN).tex
	-$(BIBTEX) $(MAIN)
	$(LATEX) -interaction=nonstopmode $(MAIN).tex
	$(LATEX) -interaction=nonstopmode $(MAIN).tex
	@echo "Done: $(MAIN).pdf"

setup:
	@if [ -z "$(UNI)" ]; then \
		echo "Usage: make setup UNI=THU"; \
		echo "Available universities:"; \
		ls -1 resource/; \
		exit 1; \
	fi
	@echo "Setting up $(UNI)..."
	@cp resource/$(UNI)/colors.sty theme/ 2>/dev/null || echo "Warning: colors.sty not found"
	@cp resource/$(UNI)/logo.pdf theme/ 2>/dev/null || echo "Warning: logo.pdf not found"
	@echo "Setup complete for $(UNI)"

clean:
	@rm -f *.aux *.log *.out *.toc *.nav *.snm *.vrb *.bbl *.blg
	@rm -f $(MAIN).pdf
	@rm -f theme/colors.sty theme/logo.pdf
	@echo "Cleaned"

help:
	@echo "University Beamer Template"
	@echo "Commands:"
	@echo "  make             - Compile with bib (xelatex+bibtex+xelatex+xelatex)"
	@echo "  make setup UNI=X - Setup university (THU, PKU, ZJU, SJTU)"
	@echo "  make clean       - Clean generated files"
	@echo "  make help        - Show this help"
