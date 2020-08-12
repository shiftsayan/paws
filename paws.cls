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
\newcommand{\headfont}{
    \fontspec[Path=fonts/]{ProductSans-Bold.ttf}
}

% Component: Header
\newcommand{\header}[2]{
    \title{#1}
    \\[0.2em]\horizontallist{#2}
}

% Component: Section Header
\newcommand{\sectionheader}[1]{
    \subsectionbreak
    {\Large \headfont #1}
    \\\subsectionbreak
}

% Component: Program
\newcommand{\program}[4]{
    \heading{#1}
    \\\textit{#2}
    \\#3, #4
    \\\subsectionbreak
}

% Component: GPA/QPA
\newcommand{\gpa}[1]{
    \label{GPA}{#1}
}

\newcommand{\qpa}[1]{
    \label{QPA}{#1}
}

% Component: Teaching
\newcommand{\teaching}[1]{
    \returnlabel{Teaching}{\bulletedlist{#1}}
}

% Component: Minors
\newcommand{\minors}[1]{
    \returnlabel{Additional Minors}{\simplelist{#1}}
}

% Component: Courses
\newcommand{\courses}[1]{
    \returnlabel{Relevant Coursework}{\bulletedlist{#1}}
}

% Component: Research
\newcommand{\research}[1]{
    \returnlabel{Research Areas}{\simplelist{#1}}
}

% Component: Skills
\newcommand{\skills}[2]{
    \returnlabel{#1}{\horizontallist{#2}}
}

% Component: Work Experience
\newcommand{\work}[4]{
    \passport{#1}{#2}{#3}{}{}{#4}
}

% Component: Project
\newcommand{\project}[3]{
    \passport{#1}{#2}{}{}{}{#3}
}

% Component: Publication
\newcommand{\publication}[3]{
    \minipassport{#1}{#2}{#3}
}

% Component: Honor
\newcommand{\honor}[2]{
    \minipassport{}{#1}{#2}
}