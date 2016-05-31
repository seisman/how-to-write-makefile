#!/bin/bash
name="Dongdong Tian"
mail="seisman.info@gmail.com"
docdir=pdf
pdfname=Makefile.pdf

echo "In master branch, deploying now..."
git config user.name "${name}"
git config user.email "${mail}"

# Deploy Github Pages
ghp-import -b gh-pages -n build/html -m 'Update by travis automatically'
git push "https://${GH_TOKEN}@${GH_REF}" gh-pages:gh-pages --force --quiet

# Deploy offline HTML and PDF files
mkdir build/${docdir} && cd build
cp latex/${pdfname} ${docdir}/
ghp-import -b ${docdir} ${docdir} -m 'Update by travis automatically'
git push "https://${GH_TOKEN}@${GH_REF}" ${docdir}:${docdir} --force --quiet
