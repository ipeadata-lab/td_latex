% Informações e Configurações Iniciais
\NeedsTeXFormat{LaTeX2e}
\newcommand{\templateauthor}{Coordenação de Ciência de Dados (COCD/CGDTI/Ipea)}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass{article}

\def\fileversion{0.0.1}
\def\filedate{11/2023}

\ProvidesClass{td}[\filedate\space Versão \fileversion\space por \templateauthor]

% Pacotes Necessários
\RequirePackage{booktabs}
\RequirePackage{longtable}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{wrapfig}
\RequirePackage{float}
\RequirePackage{colortbl}
\RequirePackage{pdflscape}
\RequirePackage{tabu}
\RequirePackage{threeparttable}
\RequirePackage{threeparttablex}
\RequirePackage[normalem]{ulem}
\RequirePackage{makecell}
\RequirePackage{xcolor}
\RequirePackage{ifthen}
\RequirePackage{amsmath,amssymb}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{sectsty}
\RequirePackage{titlesec}
\RequirePackage{wallpaper}
\RequirePackage{pdfpages} 
\RequirePackage{enumitem} 
\RequirePackage[singlelinecheck=false]{caption}
\RequirePackage{float}
\RequirePackage{iftex}

% Configurações de Fonte e Estilo de Página
\ifPDFTeX
  \RequirePackage[T1]{fontenc}
  \RequirePackage[utf8]{inputenc}
  \RequirePackage{textcomp}
\else
  \RequirePackage{unicode-math}
  \defaultfontfeatures{Scale=MatchLowercase}
  \defaultfontfeatures[\rmfamily]{Ligatures=TeX,Scale=1}
\fi
\RequirePackage{lmodern}
\ifPDFTeX\else  
  \setmainfont[]{Times New Roman}
  \setsansfont[]{Times New Roman}
\fi
\IfFileExists{upquote.sty}{\RequirePackage{upquote}}{}
\IfFileExists{microtype.sty}{
  \RequirePackage[]{microtype}
  \UseMicrotypeSet[protrusion]{basicmath}
}{}

% Configurações de Parágrafo e Espaçamento
\makeatletter
\@ifundefined{KOMAClassName}{
  \IfFileExists{parskip.sty}{
    \RequirePackage{parskip}
  }{
    \setlength{\parindent}{0pt}
    \setlength{\parskip}{6pt plus 2pt minus 1pt}
  }
}{
  \KOMAoptions{parskip=half}
}
\makeatother
\RequirePackage{xcolor}
\RequirePackage[top=25mm,left=25mm,right=25mm,bottom=25mm]{geometry}
\setlength{\emergencystretch}{3em}
\setcounter{secnumdepth}{5}

% Configurações de Títulos, Fontes e Espaçamento Vertical
\ifx\paragraph\undefined\else
  \let\oldparagraph\paragraph
  \renewcommand{\paragraph}[1]{\oldparagraph{#1}\mbox{}}
\fi
\ifx\subparagraph\undefined\else
  \let\oldsubparagraph\subparagraph
  \renewcommand{\subparagraph}[1]{\oldsubparagraph{#1}\mbox{}}
\fi

\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}
}
\RequirePackage{longtable,booktabs,array}
\RequirePackage{calc}
\RequirePackage{etoolbox}
\makeatletter
\patchcmd\longtable{\par}{\if@noskipsec\mbox{}\fi\par}{}{}
\makeatother
\IfFileExists{footnotehyper.sty}{\RequirePackage{footnotehyper}}{\RequirePackage{footnote}}
\makesavenoteenv{longtable}
\RequirePackage{graphicx}
\makeatletter
\def\maxwidth{\ifdim\Gin@nat@width>\linewidth\linewidth\else\Gin@nat@width\fi}
\def\maxheight{\ifdim\Gin@nat@height>\textheight\textheight\else\Gin@nat@height\fi}
\makeatother
\setkeys{Gin}{width=\maxwidth,height=\maxheight,keepaspectratio}
\makeatletter
\def\fps@figure{htbp}
\makeatother
\newlength{\cslhangindent}
\setlength{\cslhangindent}{1.5em}
\newlength{\csllabelwidth}
\setlength{\csllabelwidth}{3em}
\newlength{\cslentryspacingunit} 
\setlength{\cslentryspacingunit}{\parskip}
\newenvironment{CSLReferences}[2] 
 {\setlength{\parindent}{0pt}
   \ifodd #1
  \let\oldpar\par
  \def\par{\hangindent=\cslhangindent\oldpar}
  \fi
  \setlength{\parskip}{#2\cslentryspacingunit}
 }
 {}
\RequirePackage{calc}
\newcommand{\CSLBlock}[1]{#1\hfill\break}
\newcommand{\CSLLeftMargin}[1]{\parbox[t]{\csllabelwidth}{#1}}
\newcommand{\CSLRightInline}[1]{\parbox[t]{\linewidth - \csllabelwidth}{#1}\break}
\newcommand{\CSLIndent}[1]{\hspace{\cslhangindent}#1}

% Formatação de Página e Títulos
% Formata numeração da página
\pagestyle{fancy}
\fancyhf{}
\renewcommand\headrulewidth{0pt}
\fancyfoot[R]{\rmfamily\fontsize{11}{13}\selectfont\thepage}
\setlength{\footskip}{20pt}

% Formata estilo dos títulos
%% Recuo e espaçamento número-título
\titleformat{\section}
  {\bfseries}
  {\hspace{1.24cm}\thesection\hspace{0.24em}}
  {0.0em}
  {}
\titleformat{name=\section,numberless}
  {\bfseries}
  {\hspace{1.24cm}}
  {0.0em}
  {}
\titleformat{\subsection}
  {\bfseries}
  {\hspace{1.24cm}\thesubsection\hspace{0.24em}}
  {0.0em}
  {}
\titleformat{\subsubsection}
  {\bfseries}
  {\hspace{1.24cm}\thesubsubsection\hspace{0.24em}}
  {0.0em}
  {}
  
%% Tamanho das fontes
\sectionfont{\fontsize{12}{14pt}\selectfont}
\subsectionfont{\fontsize{12}{14pt}\selectfont\bfseries}
\subsubsectionfont{\fontsize{12}{14pt}\selectfont\bfseries}

%% Espaçamento vertical
\titlespacing*{\section}
  {0pt} % Espaçamento à esquerda da seção
  {18pt} % Espaçamento antes da seção
  {0pt} % Espaçamento após a seção
\titlespacing*{\subsection}
  {0pt} % Espaçamento à esquerda da seção
  {18pt} % Espaçamento antes da seção
  {0pt} % Espaçamento após a seção
\titlespacing*{\subsubsection}
  {0pt} % Espaçamento à esquerda da seção
  {18pt} % Espaçamento antes da seção
  {0pt} % Espaçamento após a seção
  
%% Alguns comandos úteis
\newcommand{\figuratd}[3]{
  \begin{figure}[!h]
    \caption{\textbf{\hfill\break #2}}
    \centering
    \includegraphics{#1}
    \caption*{\footnotesize #3}
  \end{figure}
}

% Some commands that will be useful for the title.
\makeatletter
\newcommand{\tdtitle}[1]{\def\@tdtitle{#1}}
\newcommand{\tdnum}[1]{\def\@tdnum{#1}}
\newcommand{\tdcidade}[1]{\def\@tdcidade{#1}}
\newcommand{\tdano}[1]{\def\@tdano{#1}}
\newcommand{\tdedicao}[1]{\def\@tdedicao{#1}}
\newcommand{\tdjel}[1]{\def\@tdjel{#1}}
\newcommand{\tddoi}[1]{\def\@tddoi{#1}}
\newcommand{\tdissn}[1]{\def\@tdissn{#1}}
\newcommand{\tdpchave}[1]{\def\@tdpchave{#1}}
\newcommand{\tdkwords}[1]{\def\@tdkwords{#1}}
\makeatother

%% Espaçamento nas referências
\setlength{\cslentryspacingunit}{\baselineskip}

% Configurações Finais
\makeatletter
\@ifpackageloaded{caption}{}{\RequirePackage{caption}}
\AtBeginDocument{%
\ifdefined\contentsname
  \renewcommand*\contentsname{Índice}
\else
  \newcommand\contentsname{Índice}
\fi
\ifdefined\listfigurename
  \renewcommand*\listfigurename{Lista de Figuras}
\else
  \newcommand\listfigurename{Lista de Figuras}
\fi
\ifdefined\listtablename
  \renewcommand*\listtablename{Lista de Tabelas}
\else
  \newcommand\listtablename{Lista de Tabelas}
\fi
\ifdefined\figurename
  \renewcommand*\figurename{FIGURA}
\else
  \newcommand\figurename{FIGURA}
\fi
\ifdefined\tablename
  \renewcommand*\tablename{TABELA}
\else
  \newcommand\tablename{TABELA}
\fi
}
\@ifpackageloaded{float}{}{\RequirePackage{float}}
\floatstyle{ruled}
\@ifundefined{c@chapter}{\newfloat{codelisting}{h}{lop}}{\newfloat{codelisting}{h}{lop}[chapter]}
\floatname{codelisting}{Listagem}
\newcommand*\listoflistings{\listof{codelisting}{Lista de Listagens}}
\makeatother
\makeatletter
\@ifpackageloaded{caption}{}{\RequirePackage{caption}}
\@ifpackageloaded{subcaption}{}{\RequirePackage{subcaption}}
\makeatother
\makeatletter
\@ifpackageloaded{tcolorbox}{}{\RequirePackage[skins,breakable]{tcolorbox}}
\makeatother
\makeatletter
\@ifundefined{shadecolor}{\definecolor{shadecolor}{rgb}{.97, .97, .97}}
\makeatother
\makeatletter
\makeatother
\makeatletter

% Configurações Finais (Continuação)
\ifLuaTeX
\RequirePackage[bidi=basic]{babel}
\else
\RequirePackage[bidi=default]{babel}
\fi
\babelprovide[main,import]{portuguese}
\let\LanguageShortHands\languageshorthands
\def\languageshorthands#1{}
\ifLuaTeX
  \RequirePackage{selnolig}
\fi
\IfFileExists{bookmark.sty}{\RequirePackage{bookmark}}{\RequirePackage{hyperref}}
\IfFileExists{xurl.sty}{\RequirePackage{xurl}}{}
\urlstyle{same}
