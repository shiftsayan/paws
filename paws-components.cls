% https://www.overleaf.com/learn/latex/Writing_your_own_class
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{paws-components}[Paws Components]

\LoadClass[10pt]{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

% Component: Spacing
\newcommand{\subsectionbreak}{\vspace{0.2cm}}
\newcommand{\paragraphbreak}{\vspace{0.05cm}}

% Component: Left Minipage
\newcommand{\lhs}[1]{%
    \begin{minipage}[t]{0.25\textwidth}
        \raggedright
        #1
    \end{minipage}
}

% Component: Right Minipage
\newcommand{\rhs}[1]{%
    \begin{minipage}[t]{0.7\textwidth}
        \raggedright
        #1
    \end{minipage}
}

\makeatletter % Start of recursive components

% Component: Simple List
\newcommand{\simplelist}[1]{
    \par\paragraphbreak#1\@ifnextchar\bgroup{\recursesimplelist}{\\\subsectionbreak}
}
\newcommand{\recursesimplelist}[1]{\\\paragraphbreak#1\@ifnextchar\bgroup{\recursesimplelist}{\\\subsectionbreak}}

% Component: Bulleted List
\usepackage{enumitem}
\usepackage{mathabx}
\newcommand{\bulletedlist}[1]{
    \begin{itemize}[itemsep=0cm,parsep=0.05cm,topsep=-0.05cm,leftmargin=-\itemindent,label=$\sqbullet$]
    \item #1
    \@ifnextchar\bgroup{\recursebulletedlist}{\end{itemize}\subsectionbreak}
}
\newcommand{\recursebulletedlist}[1]{
    \item #1
    \@ifnextchar\bgroup{\recursebulletedlist}{\end{itemize}\subsectionbreak}
}

% Component: Horizontal List
\newcommand{\horizontallist}[1]{
    \mbox{#1}\@ifnextchar\bgroup{\recursehorizontallist}{\\\subsectionbreak}
}
\newcommand{\recursehorizontallist}[1]{\ \textperiodcentered\ \mbox{#1}\@ifnextchar\bgroup{\recursehorizontallist}{\\\subsectionbreak}} % The weird \mbox and \ prevents abrupt hyphenation

\makeatother % End of recursive components

% Component: Title
\renewcommand{\title}[1]{
    {\huge \headfont #1}
}

% Component: Heading
\newcommand{\heading}[1]{%
    \textbf{#1}%
}

% Component: Label
\renewcommand{\label}[2]{%
    \textit{#1:} #2\subsectionbreak\\
}

% Component: Return Label
\newcommand{\returnlabel}[2]{%
    \textit{#1:}
    \\#2
}

% Component: If Exists
% Docstring: Render #2 if #1 exists.
\usepackage{ifthen}
\newcommand{\ifexists}[2]{%
    \ifthenelse{\equal{#1}{}}{}{#2}%
}

% Component: If Exists Two
% Docstring: Render #3 if #1 and #2 exist.
\newcommand{\ifexiststwo}[3]{%
    \ifexists{#1}{\ifexists{#2}{#3}}%
}

% Component: Mini Passport
\newcommand{\minipassport}[3]{
    \heading{#1}%
    \ifexiststwo{#1}{#2#3}{\\}%
    \textit{#2}\ifexiststwo{#2}{#3}{,\ }#3
    \ifexiststwo{#1}{#2#3}{\\\subsectionbreak}%
}

% Component: Passport
\newcommand{\passport}[6]{
    \heading{#1}\ifexists{#2}{\ \textperiodcentered\ }#2\hfill{\footnotesize#3}
    \ifexiststwo{#1}{#4#5}{\\\paragraphbreak}%
    \textit{#4}\ifexiststwo{#4}{#5}{,\ }#5
    \bulletedlist{#6}
}