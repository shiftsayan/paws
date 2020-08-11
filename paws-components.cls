% https://www.overleaf.com/learn/latex/Writing_your_own_class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paws-components}[Paws Components]

\LoadClass[10pt]{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Component: Spacing
\newcommand{\subsectionbreak}{\vspace{0.2cm}}
\newcommand{\passportbreak}{\vspace{0.05cm}}

% Component: Simple List
