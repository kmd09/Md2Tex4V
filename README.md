Md2Tex4V
====

Md2Tex4V is a Vim plugin which enable to convert

- Markdown → Tex
- Markdown → Tex → PDF then preview
- Tex → PDF then preview

## Requirement

[Pandoc](http://pandoc.org/)

[Latexmk](http://users.phys.psu.edu/~collins/software/latexmk-jcc/) (Included in TexLive, MacTex)

[vimproc](https://github.com/Shougo/vimproc.vim)

## Usage

``` :Md2Tex ```
 : Convert previous Markdown file to Tex file.
ex. hello.md → hello.tex

``` :Md2Pdf ```
 : Convert previous Markdown file to Tex file then make PDF.
Index(Preample) Tex file is main.tex. It should same directory to Markdown files.
Then open preview pdf.

``` :Tex2Pdf ```
 : Convert Tex file to PDF.
Index(Preample) Tex file is main.tex. It should same directory to Markdown files.
Then open preview pdf.


