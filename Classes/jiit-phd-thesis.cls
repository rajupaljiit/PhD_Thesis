%-------------------------------------------------------------%
%------------    JIIT-PhD Thesis Class File--------------%
%------------               Edited by                 --------------%
%------------        Himanshu Mittal        --------------%
%------------         (himanshu.mittal224@gmail.com)        --------------%
%-------------------------------------------------------------%

\newif\ifJIIT@bookmode
\JIIT@bookmodetrue

\DeclareOption{report}{\JIIT@bookmodefalse}
\DeclareOption{book}{\JIIT@bookmodetrue}
\ProcessOptions\relax%

\ifJIIT@bookmode
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}%
\ProcessOptions\relax%
\ifx\pdfoutput\undefined%
   \LoadClass[dvips, a4paper]{book}%
\else%
   \LoadClass[pdftex, a4paper]{book}%
\fi%
\else
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}%
\ProcessOptions\relax%
\ifx\pdfoutput\undefined%
  \LoadClass[dvips, a4paper]{report}%
\else%
   \LoadClass[pdftex, a4paper]{report}%
\fi%
\fi

\usepackage{setspace}
\usepackage{amssymb}
\usepackage{titlecaps}
\usepackage{setspace}
\usepackage{fancyhdr}
\usepackage{eucal}
\usepackage[english]{babel}
\usepackage[usenames, dvipsnames]{color}
\usepackage[perpage]{footmisc}
\usepackage{ifthen}
\usepackage{ifpdf}
\usepackage{mathptmx}
\usepackage{pdflscape}
\usepackage{tocloft} % the tocloft package lets you redefine the Table of Contents (ToC)
\renewcommand{\baselinestretch}{1.5}
\usepackage{titlesec}

%------------------ Adding ``Chapter'' in TOC ------------------
\renewcommand\cftchappresnum{{\bfseries\MakeUppercase{CHAPTER}}} % prefix "Chapter " to chapter number in ToC

\cftsetindents{chapter}{0em}{7em}      % set amount of indenting


\usepackage{titletoc}
\titlecontents{chapter}
   [0pt]% <left>
   {\medskip\bfseries}% <above-code>
   {\large\bfseries\MakeUppercase\chaptername-\thecontentslabel\hspace{0.3em}\titlerule*[0.8pc]{}\endgraf}% <numbered-entry-format>
   {}% <numberless-entry-format>
   {\titlerule*[0.8pc]{}\contentspage}

\renewcommand\cftchapfont{\fontsize{14}{10}\bfseries\MakeUppercase}
\renewcommand{\cftsecfont}{\fontsize{12}{10}\bfseries \MakeUppercase}% titles in bold
\renewcommand{\cftsubsecfont}{\fontsize{12}{10}\bfseries \MakeUppercase}% titles in bold
\renewcommand{\cftsubsubsecfont}{\fontsize{12}{10}\bfseries \MakeUppercase}% titles in bold

%%------------------ Removing doted line ----------------------------
\renewcommand{\cftdot}{}


%------------------ PageNumber Setting in TOC-------------------
\renewcommand\cftchappagefont{\bf}
\renewcommand\cftsecpagefont{\bf}
\renewcommand\cftsubsecpagefont{\bf}
\renewcommand\cftsubsubsecpagefont{\bf}

%------------------ Chapter Title Setting -------------------

%
 \titleformat{\chapter}[display]
  {\fontsize{16}{16} \centering \bfseries}
   {\MakeUppercase{\chaptertitlename}\ \thechapter}{16pt}{\MakeUppercase}

%------------------ Section Setting -------------------

\titleformat{\section}%[wrap]
{\fontsize{14}{16} \bfseries}
{\thesection}{0.5em}{}
 
%------------------ Subsection Setting -------------------
 \titleformat{\subsection}%[wrap]
  {\fontsize{12}{16} \bfseries}
   {\thesubsection}{0.5em}{}


%------------ Bibliography Setting ----------------%
\renewcommand{\bibname}{References}

\ifpdf
    \usepackage[ pdftex, plainpages = false, pdfpagelabels,
                 pdfpagelayout = OneColumn,
                 bookmarks,
                 bookmarksopen = false,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 colorlinks = true,
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = black,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}
    \usepackage[pdftex]{graphicx}
    \DeclareGraphicsExtensions{.png, .jpg, .pdf}

    \pdfcompresslevel=9
    \graphicspath{{ThesisFigs/}{ThesisFigs/}{ThesisFigs/}}
\else
    \usepackage[ dvips,
                 bookmarks,
                 bookmarksopen = false,
                 bookmarksnumbered = true,
                 breaklinks = true,
                 linktocpage,
                 colorlinks = true,
                 linkcolor = black,
                 urlcolor  = black,
                 citecolor = black,
                 anchorcolor = green,
                 hyperindex = true,
                 hyperfigures
                 ]{hyperref}

    \usepackage{graphicx}
    \DeclareGraphicsExtensions{.eps, .ps}
    \graphicspath{{ThesisFigs}{ThesisFigs/}}
\fi



%------------ A4 Page Setting ----------------%
\ifpdf
   \pdfpageheight=297mm
   \pdfpagewidth=210mm
\else
   \setlength{\paperheight}{297mm}
   \setlength{\paperwidth}{210mm}
\fi

\setlength{\hoffset}{0.00cm}
\setlength{\voffset}{0.00cm}


\pagestyle{fancy}

\fancyhf{}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\fancypagestyle{plain}{
  \fancyhead{}
  \renewcommand{\headrulewidth}{0pt}
}



%------------ Macro declaration ----------------%

% Degree Starting Date
\def\StartDegreeDate#1{\gdef\@StartDegreeDate{#1}}

% Degree completion Date
\def\EndDegreeDate#1{\gdef\@EndDegreeDate{#1}}

% Name of the degree
\def\Degree#1{\gdef\@Degree{#1}}

% Name of the Department
\def\Department#1{\gdef\@Department{#1}}

% Name of the Institute
\def\Institute#1{\gdef\@Institute{#1}}

% Tagline of the Institute
\def\InstituteTag#1{\gdef\@InstituteTag{#1}}

% Address of the Institute
\def\InstituteAdd#1{\gdef\@InstituteAdd{#1}}

% Logo of the \Institute
\def\InstituteLogo#1{\gdef\@InstituteLogo{#1}}

% Name of the degree
\def\Author#1{\gdef\@Author{#1}}

% Roll No
\def\Roll#1{\gdef\@Roll{#1}}

% Registratin Number
\def\RegistrationNumber#1{\gdef\@RegistrationNumber{#1}}

% Name of the Supervisors
\def\SupervisorA#1{\gdef\@SupervisorA{#1}}
\def\SupervisorB#1{\gdef\@SupervisorB{#1}}

% These macros define an environment for front matter that is always single column even in a double-column document.

\newenvironment{alwayssingle}{%
       \@restonecolfalse\if@twocolumn\@restonecoltrue\onecolumn
       \else\newpage\fi}
       {\if@restonecol\twocolumn\else\newpage\fi}


%------------ Redeclare the macros ----------------%
\def\Author#1{\gdef\@Author{#1}\gdef\AUTHOR{#1}}
\def\Roll#1{\gdef\@Roll{#1}\gdef\ROLL{#1}}
\def\Title#1{\gdef\@Title{#1}\gdef\TITLE{#1}}
\def\Degree#1{\gdef\@Degree{#1}\gdef\DEGREE{#1}}
\def\StartDegreeDate#1{\gdef\@StartDegreeDate{#1}\gdef\STARTDEGREEDATE{#1}}
\def\EndDegreeDate#1{\gdef\@EndDegreeDate{#1}\gdef\ENDDEGREEDATE{#1}}
\def\SupervisorA#1{\gdef\@SupervisorA{#1}\gdef\SUPERVISORA{#1}}
\def\SupervisorB#1{\gdef\@SupervisorB{#1}\gdef\SUPERVISORB{#1}}

%------------------  Title page layout ------------------------%
\renewcommand{\maketitle}{%
\pagenumbering{roman}
\setcounter{page}{0}
\begin{alwayssingle}
    \renewcommand{\footnotesize}{\small}
    \renewcommand{\footnoterule}{\relax}
    \thispagestyle{empty}
  \begin{center}
\vspace*{0.6in}
  {\fontsize{18}{16}{\MakeUppercase {\bfseries {\@Title}}} \par} \vspace*{0.6in}

%  {\large\bfseries{A Thesis}}\\ \vspace*{0.2in}

  {\fontsize{14}{16}{\em{Thesis submitted in fulfillment for the requirement of the degree of}}}\\ \vspace*{0.5in}

%  {\large{of}}\\ \vspace*{0.2in}

  {\fontsize{16}{16}{\bfseries{\expandafter{\@Degree}}}}\\ \vspace*{0.4in}

%  {\large{in}}\\ \vspace*{0.1in}

%  {\large\bfseries{\expandafter{\@Department}}}\\  \vspace*{0.3in}

  {\fontsize{12}{16}{{By}}}\\ \vspace*{0.3in}

  {\fontsize{14}{16}{\MakeUppercase {\bfseries{\expandafter {\@Author}}}}\par}%\vspace*{0.2in}
  {\fontsize{14}{16}{\MakeUppercase {\bfseries{\expandafter {\@Roll}}}}\par}\vspace*{0.2in}

%  { \large{\expandafter{\@RegistrationNumber}}}\\ 
  

  {\large \vspace*{5mm} {{\@InstituteLogo} \par} \vspace*{6mm}}

  {\fontsize{12}{16}{{\expandafter{\@Department}}}}\\  \vspace*{0.1in}

  {\fontsize{12}{16}{\MakeUppercase{\@Institute}}}\\
    {\fontsize{12}{16}{{\@InstituteTag}}}\\
    {\fontsize{12}{16}{\MakeUppercase{\@InstituteAdd}}}\\
\vspace*{0.2in}
  {\fontsize{12}{16}{ {\@EndDegreeDate}}}

  \end{center}
%  \null\vfill
\end{alwayssingle}}


%-------------- Abstract Settings -------------------%
\newenvironment{abstract}
{
\begin{alwayssingle}
\begin{center}
\vspace*{0.4in}
{ \fontsize{16}{16}{ \bfseries \MakeUppercase{Abstract}}}
\end{center}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

%-------------- Declaration Settings -------------------%
\newenvironment{declaration}
{
\begin{alwayssingle}
\begin{center}
\vspace*{0.6in}
{ \fontsize{16}{16}{\bfseries \MakeUppercase{Declaration by the scholar}}}
\end{center}
\begin{quote}}
{\end{quote}\end{alwayssingle}}

%-------------- Supervisor Declaration Settings -------------------%
\newenvironment{Supdeclaration}
{
\begin{alwayssingle}
\begin{center}
\vspace*{0.6in}
{ \fontsize{16}{16}{\bfseries \MakeUppercase{SUPERVISOR'S CERTIFICATE}}}
\end{center}
\begin{quote}}
{\end{quote}\end{alwayssingle}}


%-------------- Acknowledgements Settings -------------------%
\newenvironment{acknowledgements}
{\pagestyle{fancy}
\begin{alwayssingle}
\begin{center}
\vspace*{0.6in}
{\fontsize{16}{16}{ \bfseries \MakeUppercase{Acknowledgements}}}
\end{center}
\begin{quote}}
{\end{quote}\end{alwayssingle}}



%-------------- Nomenclature Settings -------------------%
\newenvironment{nomenclature}
{\pagestyle{fancy}
\begin{alwayssingle}
\vspace*{0.6in}
\begin{quote}
\centering
{\fontsize{16}{16}{\bfseries \MakeUppercase{LIST OF ACRONYMS \& ABBREVIATIONS}}}
{\fontsize{12}{16}{\bfseries {(Alphabetically)}}}
}
{\end{quote}\end{alwayssingle}}



%-------------- Page Numbering Settings -------------------%
% page-numbering for the remainder of the dissertation (arabic, starting at 1).

\newenvironment{romanpages}
{\setcounter{page}{1}
  \renewcommand{\thepage}{\roman{page}}}
{\newpage\renewcommand{\thepage}{\arabic{page}}}
