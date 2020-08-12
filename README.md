# Paws

Paws is an incredibly modular LaTeX-based resume template. 

I created this template to closely resemble my resume at the time and my overarching resume needs. Feel free to use as is or modify the components and styling as you need. Hopefully the modularity makes it easy!

## Compiling

This template uses custom fonts, so it is a little bit more involved than compiling a typical LaTeX document.

Also, I use Product Sans for my headings, which I unfortunately cannot upload as part of this repository. You can place your favorite bold font in `fonts` and change the reference in `paws.cls:24`.

### Instructions for MacTeX

If you have MacTeX package installed locally, you can compile the `resume.tex` file by running: 
```
latexmk -xelatex resume.xtx
```

Also, +1 for compiling LaTeX locally!

### Instructions for Visual Studio Code

If you have [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) and the MacTeX package installed locally, this template should work out of the box.

If you are curious, the `% !TEX program = xelatex` magic comment in `resume.tex` let's the LaTeX Workshop recipe know to use `xelatex`.

### Instructions for Overleaf

If you prefer to use Overleaf, you should upload a zip of `resume.tex`, `paws.cls`, `paws-components.cls`, and all the fonts you need to Overleaf. Then, change the compiler to XeLaTeX by clicking on the Menu icon (top right).