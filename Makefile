# Minimal makefile for Sphinx documentation
#

# You can set these variables from the command line.
SPHINXOPTS    =
SPHINXBUILD   = sphinx-build
SOURCEDIR     = source
BUILDDIR      = build

# Put it first so that "make" without argument is like "make help".
help:
	@$(SPHINXBUILD) -M help "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)
	@echo "  xelatexpdf  to make LaTeX files and run them through xelatex"

.PHONY: help Makefile

# Catch-all target: route all unknown targets to Sphinx using the new
# "make mode" option.  $(O) is meant as a shortcut for $(SPHINXOPTS).
%: Makefile
	@$(SPHINXBUILD) -M $@ "$(SOURCEDIR)" "$(BUILDDIR)" $(SPHINXOPTS) $(O)

xelatexpdf: Makefile latex
	@echo "Runnning LaTeX files through xelatex..."
	cd $(BUILDDIR)/latex; latexmk -xelatex -shell-escape -interaction=nonstopmode
	@echo "xelatex finished; the PDF files are in $(BUILDDIR)/latex."
