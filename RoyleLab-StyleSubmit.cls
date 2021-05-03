%%
%% This is file `RoyleLab-StyleSubmit.cls'
%% Forked from `RoyleLab-StyleBioRxiv.cls',
%%
%% Class files for journal submission
%%
%%
\typeout{Document Class `RoyleLab' <12-April-2019>.}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{RoyleLab-StyleSubmit}
  [2019/04/12 revision by SJR]
% \AtEndOfClass{\RequirePackage{microtype}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extarticle}}
\ProcessOptions*
%% Load base class
\LoadClass{extarticle}

%% define new needed boolean variables
\newif\if@tmptwocolumn  \@tmptwocolumnfalse
\newif\if@times         \@timesfalse
\newif\if@helvet         \@helvetfalse

%% Options
\newif\ifbfabstract     \bfabstracttrue
\DeclareOption{rmabstract}{\bfabstractfalse}
\newif\ifbibskip        \bibskipfalse
\DeclareOption{bibskip}{\bibskiptrue}
\newif\ifwatermark        \watermarkfalse
\DeclareOption{watermark}{\watermarktrue}

\DeclareOption{draft}{\PassOptionsToClass{draft}{article}}
\DeclareOption{times}{\@timestrue}
\DeclareOption{helvet}{\@helvettrue}
\DeclareOption{twoside}{\@twosidetrue}
\DeclareOption{twocolumn}{\@tmptwocolumntrue}
\DeclareOption{onecolumn}{\@tmptwocolumnfalse}

\ExecuteOptions{helvet,onecolumn}
\ProcessOptions


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Royle lab dependencies - Start %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{mathptmx}
\RequirePackage{xcolor}
\RequirePackage{authblk}
\RequirePackage[latin1,utf8]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{lmodern}
\RequirePackage[detect-all=true]{siunitx}
\RequirePackage{textgreek}
%\RequirePackage{cleveref}
\RequirePackage{gensymb}
\RequirePackage{textcomp}
% no hyphenation
\usepackage[none]{hyphenat}
% this line causes a l3regex obsolete warning - problem seems Overleaf-side
\RequirePackage[version=4]{mhchem}
%% Units
\DeclareSIUnit\molar{\mole\per\cubic\deci\metre}
\DeclareSIUnit\Molar{\textsc{m}}
\DeclareSIUnit\gee{\textit{g}}
\DeclareSIUnit\Units{\textnormal{U}}
\DeclareSIUnit\rpm{\textnormal{rpm}}
\DeclareSIUnit\pixel{\textnormal{px}}
\DeclareSIUnit\electron{\textnormal{e\textsuperscript{--}}}

\RequirePackage[scaled]{helvet}
\RequirePackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\RequirePackage{lettrine} % For dropped capitals
\RequirePackage[rightcaption]{sidecap} % For sidecaptions
%\sidecaptionvpos{figure}{t}
\RequirePackage[misc]{ifsym} % For the \Letter symbol
\RequirePackage{bbding} % For the \Envelope symbol
\RequirePackage[a4paper,
                total={170mm,247mm},
                left=20mm,
                top=25mm]{geometry}
\RequirePackage[labelfont={bf,sf},%
                labelsep=period,%
                figurename=Figure]{caption}
%% line numbers
\RequirePackage{lineno}
\linenumbers

%% Hyperlinking
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}

%% Ref to Sup
\RequirePackage{nameref}
\RequirePackage{cleveref}
\crefname{equation}{Eq. S}{equations}
\crefname{figure}{Figure}{figures}
\crefname{section}{Sup. Note}{notes}
\crefname{suppfigure}{Supplementary Figure}{supplementary figures}
\crefname{supptable}{Supplementary Table}{supplementary tables}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Royle lab dependencies - End %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Fonts
\if@helvet\RequirePackage{helvet}\fi

%% sizes and margins
%\topmargin      -16.0mm
%\oddsidemargin  -11.0mm
%\evensidemargin -11.0mm
%\textwidth        175mm
%\textheight       243mm
\columnsep          7mm
\headsep          6.3mm
\headheight        12pt
\lineskip           1pt
\normallineskip     1pt
\def\baselinestretch{1}

\marginparsep      10pt
\marginparwidth    20pt
\marginparpush     25pt

\partopsep          \z@
\topsep           1.3ex
\parsep             \z@
\itemsep            \z@

%%
\abovedisplayskip       0pt plus2pt minus5pt%
\belowdisplayskip       \abovedisplayskip
\abovedisplayshortskip  0pt plus3pt%
\belowdisplayshortskip  0pt plus3pt minus3pt%

\arraycolsep     5pt
\tabcolsep       6pt
\arrayrulewidth .4pt
\doublerulesep   2pt
\tabbingsep\labelsep

%% footnotes
\skip\footins 10pt plus 4pt minus 2pt
\footnotesep 7pt
\footskip 10mm
\skip\@mpfootins = \skip\footins
\fboxsep = 3pt \fboxrule = .4pt
\long\def\@makefntext#1{\parindent .8em\indent$^{\@thefnmark}$#1}
\def\footnoterule{}


\newdimen\@maxsep
\newdimen\@dblmaxsep
%% Definitions for floats
%%
%% Normal Floats                      %% Double Column Floats
\floatsep 12pt plus 2pt minus 2pt     \dblfloatsep 12pt plus 2pt minus 2pt
\textfloatsep 20pt plus 2pt minus 4pt \dbltextfloatsep 20pt plus 2pt minus 4pt
\@maxsep 20pt                         \@dblmaxsep 20pt
\@fptop 0pt plus 1fil                 \@dblfptop 0pt plus 1fil
\@fpsep 8pt plus 2fil                 \@dblfpsep 8pt plus 2fil
\@fpbot 0pt plus 1fil                 \@dblfpbot 0pt plus 1fil
\def\topfraction{1.0}                 \def\dbltopfraction{1.0}
\def\floatpagefraction{0.8}           \def\dblfloatpagefraction{0.8}
\setcounter{topnumber}{2}             \setcounter{dbltopnumber}{4}
\intextsep 12pt plus 2pt minus 2pt
\setcounter{bottomnumber}{2}
\def\bottomfraction{.1}
\setcounter{totalnumber}{4}
\def\textfraction{.1}
\setlength{\belowcaptionskip}{-10pt} % reduces spacing between figure legend and text

\renewcommand{\topfraction}{0.99}
\renewcommand{\floatpagefraction}{0.5}
\renewcommand{\bottomfraction}{0.99}
\renewcommand{\textfraction}{0.01}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% %%
%% Royle lab parts adapted from PNAS %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\shorttitle}[1]{\def\@shorttitle{#1}}
\newcommand{\leadauthor}[1]{\def\@leadauthor{#1}}
%\newcommand{\headerfont}{\normalfont\sffamily\fontsize{7}{9} \selectfont}
\newcommand{\footerfont}{\normalfont\sffamily\fontsize{7}{9} \selectfont}
\newcommand{\titlefont}{\fontfamily{lmss}\bfseries\fontsize{18pt}{20pt}\selectfont}
\newcommand{\dropcapfont}{\fontfamily{lmss}\bfseries\fontsize{22pt}{24pt}\selectfont}
\newcommand{\datesfont}{\normalfont\sffamily\fontsize{7}{9}\selectfont}
\newcommand{\absfont}{\normalfont\sffamily\bfseries\fontsize{10}{12}\selectfont}
\newcommand{\keywordsfont}{\normalfont\rmfamily\fontsize{10}{11}\selectfont}
\newcommand{\copyrightfont}{\normalfont\rmfamily\fontsize{10}{11}\selectfont}

%% Set document color scheme
\definecolor{black50}{gray}{0.5} % 50% black for hrules
\definecolor{color0}{RGB}{0,0,0} % Base
\definecolor{color1}{RGB}{59,90,198} % author email, doi
\definecolor{color2}{RGB}{16,131,16} %

%% Author and affiliation
\setlength{\affilsep}{12pt}
\renewcommand\Authfont{\color{color0}\normalfont\sffamily\bfseries\fontsize{9}{10}\selectfont}
\renewcommand\Affilfont{\color{color0}\normalfont\sffamily\fontsize{9}{10}\selectfont}
\makeatletter
% uncomment the following line to have affiliations on same line
% \renewcommand\AB@affilsepx{; \protect\Affilfont}
\renewcommand\Authands{, and }

%% Section/subsection/paragraph set-up
\RequirePackage[explicit]{titlesec}
\renewcommand{\thesubsection}{\Alph{subsection}}

\titleformat{\section}
  {\large\sffamily\bfseries}
  {}
  {0em}
  {Supplementary Note \thesection: #1}
  []
\titleformat{name=\section,numberless}
  {\large\sffamily\bfseries}
  {}
  {0em}
  {#1}
  []
\titleformat{\subsection}
  {\sffamily\bfseries}
  {\thesubsection.}
  {0em}
  {#1}
  []
\titleformat{\subsubsection}[runin]
  {\sffamily\small\bfseries\itshape}
  {\thesubsubsection.}
  {0.5em}
  {#1. }
  []
\titleformat{\paragraph}[runin]
  {\sffamily\small\bfseries}
  {}
  {0em}
  {#1}
\titlespacing*{\section}{0pc}{3ex \@plus4pt \@minus3pt}{5pt}
\titlespacing*{\subsection}{0pc}{3ex \@plus4pt \@minus2pt}{4pt}
\titlespacing*{\subsubsection}{0pc}{2ex \@plus2.5pt \@minus1.5pt}{2pt}
\titlespacing*{\paragraph}{0pc}{1.5ex \@plus2pt \@minus1pt}{12pt}

\let\oldsection\section
\renewcommand\section{\clearpage\oldsection}

%% Figure caption style
\DeclareCaptionFormat{smallformat}{\normalfont\sffamily\fontsize{9}{12}\selectfont#1#2#3}
\DeclareCaptionFormat{largeformat}{\normalfont\sffamily\fontsize{9}{12}\selectfont#1#2#3}
\captionsetup*{format=smallformat}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Royle lab parts adapted from PNAS - END %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% marks
\def\markboth#1#2{\def\leftmark{#1}\def\rightmark{#2}}
\def\footernote#1{\markboth{#1}{#1}}

% %% bibliography
\RequirePackage{chapterbib}
\RequirePackage[sectionbib,authoryear,round]{natbib}
\setlength{\bibsep}{0.0pt}
\bibliographystyle{RoyleLab-StyleBib.bst}
\renewcommand{\bibsection}{} % Remove header
\renewcommand\bibfont{\normalfont\sffamily\fontsize{9}{10}\selectfont} % set font to be sans serif

\makeatletter
\renewcommand\@biblabel[1]{ #1.} % Remove brackets from label
\def\tagform@#1{\maketag@@@{\bfseries(\ignorespaces#1\unskip\@@italiccorr)}}
\renewcommand{\eqref}[1]{\textup{{\normalfont Eq.~(\ref{#1}}\normalfont)}}
% \makeatother

%% Title
\def\maketitle{\par
  \begingroup
  \def\thefootnote{} % the \thanks{} mark type is empty
\if@tmptwocolumn
  \twocolumn[\@maketitle]
\else
  \@maketitle
\fi
  \thispagestyle{plain}\@thanks
  \endgroup
  \setcounter{footnote}{0}\let\maketitle\relax\let\@maketitle\relax
  \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax
}

\def\@maketitle{\newpage
%  \begin{left}
    \vskip0.2em{\huge\bfseries\@title\par}\vskip1.0em%
    {\lineskip.5em\large\@author\par}
%  \end{left}
    \par\vskip 1.4em}

%% Abstract and keywords
\def\abstract{\vspace{2em}
  \ifbfabstract\normalsize\bfseries\else\footnotesize\fi}

\def\endabstract{\vspace{1.0em}\par\normalsize}

\def\keywords{
\ifbfabstract\Affilfont\normalfont\else\footnotesize\fi}
\def\endkeywords{\vspace{1em}\par\normalsize}

\newcommand{\at}{\makeatletter @\makeatother}
\def\corrauthor{
\noindent\ifbfabstract\Affilfont\normalfont\else\footnotesize\fi  Correspondence:\itshape}
\def\endcorrauthor{\vspace{1em}\par\normalsize}

\def\acknowledgements{
\Affilfont\bfseries ACKNOWLEDGEMENTS\par\mdseries}
\def\endacknowledgements{\vspace{1em}\par\normalsize}

\def\contributions{
\Affilfont\bfseries AUTHOR CONTRIBUTIONS\par\mdseries}
\def\endcontributions{\vspace{1em}\par\normalsize}

\def\interests{
\Affilfont\bfseries COMPETING FINANCIAL INTERESTS\par\mdseries}
\def\endinterests{\vspace{1em}\par\normalsize}

\onecolumn \sloppy \flushbottom

%% Allows to enter BIOGRAPHY leaving place for picture
%%
\newenvironment{biography}[1]{%
\normalsize\unitlength 1mm\bigskip\bigskip\bigskip\parskip=0pt\par%
\rule{0pt}{39mm}\vspace{-39mm}\par%   guarantees correct page breaking
\noindent\setbox0\hbox{\framebox(25,32){}}%   box containing the frame
\ht0=37mm\count10=\ht0\divide\count10 by\baselineskip%  calculates lines
\global\hangindent29mm\global\hangafter-\count10%
\hskip-28.5mm\setbox0\hbox to 28.5mm {\raise-30.5mm\box0\hss}%
\dp0=0mm\ht0=0mm\box0\noindent\bf#1\rm}{
\par\rm\normalsize}

%% Default rules for including pictures
\RequirePackage{graphicx}
\RequirePackage{color}
\DeclareGraphicsRule{*}{eps}{*}{}

%% Page headers and footers
%%
\RequirePackage{fancyhdr} % Custom headers/footers
\RequirePackage{lastpage} % Number of pages in the document
\pagestyle{fancy}		  % Enables the custom headers/footers

\def\aBioRXiv{{\footnotesize
    \footerfont \@leadauthor\ifnum \value{authors} > 1\hspace{2pt}\textit{et al.}\fi\hspace{7pt}|\hspace{7pt}\today\hspace{7pt}|\hspace{7pt}\thepage\textendash\pageref{LastPage}
  }}

\def\bBioRXiv{{\footnotesize
    \footerfont \thepage\hspace{7pt}|
  }}

\def\cBioRXiv{{\footnotesize
    \footerfont |\hspace{7pt}\thepage
  }}

\def\bSupInf{{\footnotesize
    \footerfont \thepage\hspace{7pt}|\hspace{7pt}Supplementary Information
  }}

\def\cSupInf{{\footnotesize
    \footerfont Supplementary Information\hspace{7pt}|\hspace{7pt}\thepage
  }}

\def\dAuthor{{\footnotesize
    \footerfont \@leadauthor\ifnum \value{authors} > 1\hspace{2pt}\textit{et al.}\fi\hspace{7pt}|\hspace{7pt}\@shorttitle
  }}



\lfoot[\bBioRXiv]{\dAuthor}
\rfoot[\dAuthor]{\cBioRXiv}

\rhead[]{\footnotesize\rightmark}
\lhead[\footnotesize\leftmark]{}
\cfoot{}
\renewcommand{\headrulewidth}{0pt}

\fancypagestyle{plain}{
\fancyhf{}
\fancyfoot[RE]{}
\fancyfoot[LO]{}
\fancyfoot[LE]{}
\fancyfoot[RO]{\aBioRXiv}}

\def\sectionmark#1{\relax}

\parindent=0pt
\endinput
