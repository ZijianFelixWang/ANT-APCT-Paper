@echo off
title PDFLaTeX
pdflatex.exe -synctex=1 -interaction=nonstopmode "paper".tex
start paper.tex
exit