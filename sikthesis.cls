% Encoding: UTF-8
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% $Id: sikthesis.cls 111 2015-10-06 12:55:56Z klugeflo $
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% sikthesis.cls -- based on DE-TeX-FAQ's modified ``article.cls''
\NeedsTeXFormat{LaTeX2e}\relax
\ProvidesClass{sikthesis}[2011/07/13 Class for SIK thesis]
%% Lade nun ``scrreprt.cls'', wobei als Default-Optionen ``12pt'' und
%% A4-Papierformat als Default gesetzt werden (fuer diese muss explizit
%% eine Deklaration hier vorhanden sein) und alle weiteren vom Autor
%% gegebenen Optionen einfach `durchgereicht' werden:
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrbook}}
\ProcessOptions\relax
\PassOptionsToClass{12pt,a4paper,footsepline,headsepline,bibliography=totoc,listof=totoc, twoside}{scrbook}
\LoadClass{scrbook}

 %% Ab hier kann man Aenderungen an den Makros der geladenen Klasse
 %% durchfuehren (bitte mit \renewenvironment oder \renewcommand!),
 %% Pakete hinzuladen und/oder eigene Anweisungen und Umgebungen
 %% definieren:
 
\usepackage[%
bookmarks=true,         %
bookmarksopenlevel=1,   %
bookmarksopen=true,     %
bookmarksnumbered=true, %
plainpages=false,       % correct hyperlinks
pdfpagelabels=true,     % view TeX pagenumber in PDF reader
colorlinks=true,        % color highlight links
allcolors=black,        % make all links black by default
]{hyperref}

\usepackage[top=3.75cm,left=2.75cm,right=2.75cm,bottom=3.75cm,
bindingoffset=0.5cm,heightrounded,
marginparwidth=2cm,marginparsep=0.25cm,
headsep=2em,footskip=3em]{geometry}

% Load additional packages and commands.
\RequirePackage{scrlayer-scrpage}
% scr compatibility with KOMA script
\usepackage{scrhack}

\renewcommand{\chapterheadstartvskip}{}

\RequirePackage{acro}
\RequirePackage{amsmath}
\RequirePackage{appendix}
\RequirePackage[english]{babel}
\RequirePackage{graphicx}
\RequirePackage[utf8]{inputenc} % text encoding is UTF-8
\RequirePackage{todonotes}
\RequirePackage{tikz}
\RequirePackage{pgfplots}

\newcommand{\infonote}[1]{\todo[color=blue!25]{#1}}
\def\tikz{Ti\textit{k}Z}

%\makeatletter

%% Seitenlayout
%\pagestyle{fancy}                            %% Seitenlayout: ...
%\pagestyle{fancyplain}
%\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
%\renewcommand{\sectionmark}[1]{\markright{\thesection\ #1}}
%\renewcommand{\footrulewidth}{1pt}
%\lhead[\fancyplain{}{}]{\fancyplain{}{\rightmark}}
%\rhead[\fancyplain{}{\leftmark}]{\fancyplain{}}
%\rfoot{\thepage}
\setlength{\parindent}{0cm}
\setlength{\parskip}{1.5ex}
%\setlength{\oddsidemargin}{0mm}
%\setlength{\evensidemargin}{0mm}
%\setlength{\evensidemargin}{0mm}
%\setcounter{secnumdepth}{3}


\gdef\sikType#1{\gdef\@sikType{#1}}
\def\@sikType{Abschlussarbeit}
\gdef\sikAuthor#1{\gdef\@sikAuthor{#1}}
\def\@sikAuthor{Fehlende Autorenangabe :-)}
\def\sikTitle#1{\gdef\@sikTitle{#1}}
\def\@sikTitle{Fehlende Titelangabe :-)}
\gdef\sikRefereeOne#1{\gdef\@sikRefereeOne{#1}}
\def\@sikRefereeOne{Fehlende Gutachterangabe :-)}
\gdef\sikRefereeTwo#1{\gdef\@sikRefereeTwo{#1}}
\def\@sikRefereeTwo{Fehlende Zweitgutachterangabe :-)}
\gdef\sikAdviser#1{\gdef\@sikAdviser{#1}}
\def\@sikAdviser{Fehlende Betreuerangabe :-)}
\gdef\sikMatnr#1{\gdef\@sikMatnr{#1}}
\def\@sikAdviser{Fehlende Matrikelnummer :-)}
\def\sikDate#1{\gdef\@sikDate{#1}}
\gdef\@sikDate{\datoday}




\newcommand{\sikTitlePage}{
  \begin{titlepage}
    \begin{center}%
      {\huge \textsc{Institut f\"ur Informatik}} \\[1em]%
      {\huge \textsc{Universit\"at Augsburg}}%
      \\\vspace{5em}
      \includegraphics[height=4.2cm]{uniwappen.pdf}%
      \\\vspace{5em}
      \begin{minipage}[c]{15cm}%
        \begin{center}%
          {\LARGE \@sikType \par}%
          \vskip 5em
                 {\LARGE \textbf{\@sikTitle}\par}%
                 \vskip 3em%
                        {\large
                          \lineskip .75em%
                          \begin{tabular}[t]{c}%
                            {\LARGE\textbf{\@sikAuthor}}
                          \end{tabular}\par}%
        	\end{center}\par
      \end{minipage}
      \\\vfill
      \begin{center}%
         \begin{tabular}{rl}
                          Matrikelnummer: & \@sikMatnr \\    
                          Gutachter: & \@sikRefereeOne \\      
                          Zweitgutachter: & \@sikRefereeTwo \\       
                          Betreuer: & \@sikAdviser \\       
                          Datum: & \@sikDate \\
           \end{tabular}
		\end{center}\par
    \end{center}\par
  \end{titlepage}

  \vspace*{\fill}
  \thispagestyle{empty}
  verfasst am\\
  Lehrstuhl für Quantenalgorithmik\\
  Prof. Dr. Jakob Kottmann \\
  Institut f\"ur Informatik \\
  Universit\"at Augsburg \\
  D--86135 Augsburg, Germany \\
}


 \endinput




