#!/bin/bash
#
# Install minimal TeXLive 2015 for GMT_docs
#
#REMOTE=http://mirrors.ustc.edu.cn/CTAN/systems/texlive/tlnet
REMOTE=http://ctan.sharelatex.com/tex-archive/systems/texlive/tlnet/
TEXBIN=/usr/local/texlive/2015/bin/x86_64-linux
PACKAGES="titlesec fandol ctex threeparttable framed wrapfig upquote capt-of needspace multirow eqparbox environ trimspaces zhnumber zapfding latexmk"

# install TeXLive
mkdir -p /tmp/install-texlive
cd /tmp/install-texlive/
curl -sSL $REMOTE/install-tl-unx.tar.gz | tar -xz -C ./ --strip-components=1

cat << EOF > texlive.profile
selected_scheme scheme-minimal
TEXMFHOME ~/.texmf
TEXMFCONFIG ~/.texlive/texmf-config
TEXMFVAR ~/.texlive/texmf-var
collection-basic 1
collection-genericrecommended 1
collection-latex 1
collection-latexextra 0
collection-latexrecommended 1
collection-xetex 1
collection-langchinese 0
option_autobackup 0
option_doc 0
option_src 0
EOF

sudo ./install-tl -profile texlive.profile -repository $REMOTE
sudo $TEXBIN/tlmgr update --self --all --repository $REMOTE
sudo $TEXBIN/tlmgr install $PACKAGES --repository $REMOTE

cd -
echo export PATH=$TEXBIN:'$PATH' > srcfile
