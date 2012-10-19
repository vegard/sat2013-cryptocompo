set -e
set -u

rm -rf *.aux *.bbl *.blg *.dep *.dpth *.log *.out *.toc *.lot *.lof

pdflatex -shell-escape proposal
bibtex8 proposal || true
pdflatex -shell-escape proposal
pdflatex -shell-escape proposal
cp proposal.pdf proposal-output.pdf
