% https://www.overleaf.com/learn/latex/Writing_your_own_class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paws}[Paws]

\LoadClass{paws-components}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{paws-components}}
\ProcessOptions\relax

% Setup: Spacing
\newcommand{\hmargin}{0.75cm}
\newcommand{\vmargin}{0.75cm}
\renewcommand{\baselinestretch}{1.12}
\setlength{\parindent}{0in}

% Setup: Page
\usepackage[hmargin=\hmargin, vmargin=\vmargin]{geometry}

% Setup: Fonts
\usepackage{fontspec}
\usepackage{fontawesome5}

\setmainfont{Lato}
\newcommand{\titlefont}{
    \fontspec[Path=fonts/]{ProductSans-Bold.ttf}
}

