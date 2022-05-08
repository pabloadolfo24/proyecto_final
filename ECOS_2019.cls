%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Coupled class for LaTeX files                 v1.1 Feb-23-2000 %%
%%                                                                %%
%% The regular article class commands still exist and may be used.%%
%% 10pt, 11pt and twocolumn options are disabled.                 %%
%%                                                                %%
%% \maketitle make the first page automatically                   %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

\DeclareOption{10pt}{\OptionNotUsed}
\DeclareOption{11pt}{\OptionNotUsed}
\DeclareOption{twocolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions\relax

\LoadClass[a4paper,12pt]{article}

\RequirePackage{calc}
\RequirePackage{indentfirst}

\setlength{\oddsidemargin}{-5mm}
\setlength{\evensidemargin}{-5mm}
\setlength{\headheight}{0mm}
\setlength{\headsep}{0mm}
\setlength{\textheight}{220mm}
\setlength{\textwidth}{170mm}
\setlength{\textfloatsep}{12pt}
\setlength{\abovedisplayskip}{5pt}
\setlength{\belowdisplayskip}{5pt}
\setlength{\parindent}{0mm}
\setlength{\abovecaptionskip}{6pt}
\setlength{\belowcaptionskip}{6pt}
\setlength{\itemsep}{0pt}

\usepackage{graphicx}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{amssymb}
\usepackage{mathtools}
\usepackage{enumitem}
\usepackage{cite}
\usepackage{gensymb}
\usepackage{hyperref}
\usepackage[title]{appendix}
\usepackage[left=2.5cm,right=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
\usepackage{multirow}
\usepackage{makecell}
\usepackage{subfig}
\usepackage[para,online,flushleft]{threeparttable}
\usepackage{tabularx}
\usepackage{nomencl}
\DeclareUnicodeCharacter{0301}{\'{e}}

%% Title
\renewcommand{\maketitle}{%
 \newpage
% \thispagestyle{myheadings}
 
 \begin{center}%
  \vspace{10pt}%
  {%3
   \fontsize{14}{14}\selectfont
   \textbf{\@title}
   \par
  }%3
  %\vspace{18pt}%
 \vspace{16pt}%
  {%4
\fontsize{12}{12}\selectfont
   %\bfseries\it\@author
   \textbf{\textit\@author}
   \par
  }%4
  %\vspace{14pt}%
  \vspace{16pt}%
  {%5
\fontsize{11}{12}\selectfont
   %\def\and{\\\vspace{14pt}}
\def\and{\\\vspace{2pt}}
   %\normalfont\@address
   \normalfont\it\@address
   \par
  }%5
 \end{center}

 %\vspace{18pt}%
 \vspace{8pt}%
 {\textbf{ABSTRACT\\}{\textrm\@abstract}}
 \par
  %\vspace{18pt}%
 \vspace{11pt}%
 {\textbf{KEYWORDS\\}{\textrm\@keywords}}
 \par
\vspace{6pt}
 %\vfill
 %\newpage
}% End of \@maketitle

\def\author{\@ifnextchar[{\@getshortauthor}{\@getauthor}}
\def\@getauthor#1{\gdef\@author{#1}\gdef\@shortauthor{#1}}
\def\@getshortauthor[#1]#2{\gdef\@shortauthor{#1}\gdef\@author{#2}}

\newcommand{\address}[1]{\gdef\@address{#1}}

\newcommand{\keywords}[1]{\gdef\@keywords{#1}}

\renewcommand{\abstract}[1]{\gdef\@abstract{#1}}

\newcommand{\heading}[1]{\gdef\@heading{#1}}

%\newcommand{\author}[1]{\gdef\@author{#1}}

%%%%% Headings definition
%\def\ps@myheadings{%

%    \def\@oddfoot{\normalfont\hfil\thepage}
%    \let\@evenfoot\@oddfoot
%    \def\@evenhead{%
%       \parbox[t][11.5pt][t]{\textwidth}{%
%       \parbox[t][12.5pt][t]{\textwidth}{%
%        \centering
%        \normalfont
%        \fontsize{10}{10}\selectfont
%        \ifodd\value{page}\relax
%            \@title\\
%        \else
%            \@author\\
%        \fi%
%        \vspace{-.2cm}
%        \rule{\textwidth}{0.5pt}%
%         }
%    }%
%    \let\@oddhead\@evenhead
%    \let\@mkboth\@gobbletwo
%    \let\sectionmark\@gobble
%    \let\subsectionmark\@gobble
%}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%





\def\sectionLevel{1}
\def\sectionIndent{0pt}
\def\sectionSpaceBefore{6pt}
\def\sectionSpaceAfter{6pt}
\def\sectionStyle{\bfseries}

\renewcommand\thesection{\arabic{section}.}

\renewcommand \thesubsection{\arabic{section}.\arabic{subsection}.}

\renewcommand \thesubsubsection{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}.}

\renewcommand{\section}{%
  \@startsection{section}{\sectionLevel}{\sectionIndent}{\sectionSpaceBefore}%
                {\sectionSpaceAfter}{\sectionStyle}}%

\def\sectionLevel{2}
\def\sectionIndent{0pt}
\def\sectionSpaceBefore{6pt}
\def\sectionSpaceAfter{6pt}
\def\sectionStyle{\bfseries}

\def\sectionLevel{3}
\def\sectionIndent{0pt}
\def\sectionSpaceBefore{6pt}
\def\sectionSpaceAfter{6pt}
\def\sectionStyle{\bfseries}

\renewcommand{\subsection}{%
  \@startsection{subsection}{\sectionLevel}{\sectionIndent}{\sectionSpaceBefore}%
                {\sectionSpaceAfter}{\sectionStyle}}%

\renewcommand{\subsubsection}{%
  \@startsection{subsubsection}{\sectionLevel}{\sectionIndent}{\sectionSpaceBefore}%
                {\sectionSpaceAfter}{\sectionStyle}}%




\renewcommand{\@makecaption}[2]{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\normalsize\fontsize{12}{12}\selectfont {\bf #1}. #2}%
  \ifdim \wd\@tempboxa >\hsize
    \normalsize\fontsize{12}{12}\selectfont {\bf #1}. #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}
   
\renewcommand{\descriptionlabel}[1]{\hspace{1cm}\textit{#1}}

%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\labelitemii}{$\circ$}
%\renewcommand{\labelitemii}{$\square$}
\let\tempone\itemize
\let\temptwo\enditemize
\renewenvironment{itemize}{\tempone\addtolength{\itemsep}{0\baselineskip}}{\temptwo}

%%%%%%%%%%%%%%%%%%%%%

\newenvironment{mydescription}[1]                                                
  {\begin{list}{}%
   {\renewcommand\makelabel[1]{##1:\hfill}%
   \settowidth\labelwidth{\makelabel{#1}}%
   \setlength\leftmargin{\labelwidth}
   \addtolength\leftmargin{\labelsep}}}
  {\end{list}}

\AtBeginDocument{%
%  \pagestyle{myheadings}
  \maketitle
  \let\maketitle\relax
\pagestyle{empty}
}

\endinput
