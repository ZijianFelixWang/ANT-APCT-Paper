%
% aimsms.cls --- For AIMS
%

\def\update{2015/5/10 v1.0}

\newcommand{\journalname}{AIMS Mathematics}
\newcommand{\journalclass}{aimsms.cls}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{aimsnew}[\update\ \journalclass]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass{article}

\RequirePackage{graphicx,xcolor}
\RequirePackage{ifthen,calc}
\RequirePackage{amsfonts,amssymb,amsbsy,amsmath,amsthm}
\RequirePackage[colorlinks,linkcolor=black,citecolor=black,urlcolor=black,breaklinks]{hyperref}
\RequirePackage[a4paper,top=2.54cm,bottom=2.54cm,left=1.90cm,right=1.90cm,%
                headsep=1em,includehead,includefoot]{geometry}
\RequirePackage{float}
\RequirePackage{indentfirst}

\flushbottom

%=== font size definitions
\def\AIMSMS@fs@eight{5.02}   \def\AIMSMS@fs@eightskip{6.02}
\def\AIMSMS@fs@seven{5.52}   \def\AIMSMS@fs@sevenskip{6.62}
\def\AIMSMS@fs@ssix{6.52}    \def\AIMSMS@fs@ssixskip{7.83}
\def\AIMSMS@fs@six{7.53}     \def\AIMSMS@fs@sixskip{9.03}
\def\AIMSMS@fs@sfive{9.03}   \def\AIMSMS@fs@sfiveskip{10.84}
%\def\AIMSMS@fs@five{10.54}   \def\AIMSMS@fs@fiveskip{12.65}
%\def\AIMSMS@fs@sfour{12.05}  \def\AIMSMS@fs@sfourskip{14.45}
\def\AIMSMS@fs@five{10.00}   \def\AIMSMS@fs@fiveskip{15.00}
\def\AIMSMS@fs@sfour{12.00}  \def\AIMSMS@fs@sfourskip{15.00}
\def\AIMSMS@fs@four{14.05}   \def\AIMSMS@fs@fourskip{16.86}
\def\AIMSMS@fs@sthree{15.06} \def\AIMSMS@fs@sthreeskip{18.07}
\def\AIMSMS@fs@three{16.06}  \def\AIMSMS@fs@threeskip{19.27}
\def\AIMSMS@fs@stwo{18.07}   \def\AIMSMS@fs@stwoskip{21.68}
\def\AIMSMS@fs@two{22.08}    \def\AIMSMS@fs@twoskip{26.50}
\def\AIMSMS@fs@sone{24.09}   \def\AIMSMS@fs@soneskip{28.91}
\def\AIMSMS@fs@one{26.10}    \def\AIMSMS@fs@oneskip{31.32}
\def\AIMSMS@fs@szero{36.14}  \def\AIMSMS@fs@szeroskip{43.36}
\def\AIMSMS@fs@zero{42.16}   \def\AIMSMS@fs@zeroskip{50.59}
\DeclareMathSizes{\AIMSMS@fs@eight}{\AIMSMS@fs@eight}{5}{5}
\DeclareMathSizes{\AIMSMS@fs@seven}{\AIMSMS@fs@seven}{5}{5}
\DeclareMathSizes{\AIMSMS@fs@ssix}{\AIMSMS@fs@ssix}{5}{5}
\DeclareMathSizes{\AIMSMS@fs@six}{\AIMSMS@fs@six}{5}{5}
\DeclareMathSizes{\AIMSMS@fs@sfive}{\AIMSMS@fs@sfive}{6}{5}
\DeclareMathSizes{\AIMSMS@fs@five}{\AIMSMS@fs@five}{7}{5}
\DeclareMathSizes{\AIMSMS@fs@sfour}{\AIMSMS@fs@sfour}{8}{6}
\DeclareMathSizes{\AIMSMS@fs@four}
                 {\AIMSMS@fs@four}{\AIMSMS@fs@five}{\AIMSMS@fs@six}
\DeclareMathSizes{\AIMSMS@fs@sthree}
                 {\AIMSMS@fs@sthree}{\AIMSMS@fs@sfour}{\AIMSMS@fs@sfive}
\DeclareMathSizes{\AIMSMS@fs@three}
                 {\AIMSMS@fs@three}{\AIMSMS@fs@four}{\AIMSMS@fs@five}
\DeclareMathSizes{\AIMSMS@fs@stwo}
                 {\AIMSMS@fs@stwo}{\AIMSMS@fs@sthree}{\AIMSMS@fs@sfour}
\DeclareMathSizes{\AIMSMS@fs@two}
                 {\AIMSMS@fs@two}{\AIMSMS@fs@three}{\AIMSMS@fs@four}
\DeclareMathSizes{\AIMSMS@fs@sone}
                 {\AIMSMS@fs@sone}{\AIMSMS@fs@stwo}{\AIMSMS@fs@sthree}
\DeclareMathSizes{\AIMSMS@fs@one}
                 {\AIMSMS@fs@one}{\AIMSMS@fs@two}{\AIMSMS@fs@three}
\DeclareMathSizes{\AIMSMS@fs@szero}
                 {\AIMSMS@fs@szero}{\AIMSMS@fs@sone}{\AIMSMS@fs@stwo}
\DeclareMathSizes{\AIMSMS@fs@zero}
                 {\AIMSMS@fs@zero}{\AIMSMS@fs@one}{\AIMSMS@fs@two}

\renewcommand\normalsize{% 12bp
  \@setfontsize\normalsize{\AIMSMS@fs@sfour}{\AIMSMS@fs@sfourskip}%
  \abovedisplayskip 12\p@ \@plus3\p@ \@minus7\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
  \belowdisplayskip \abovedisplayskip
  \let\@listi\@listI}
\normalsize
\renewcommand\small{% 10.5bp
  \@setfontsize\small{\AIMSMS@fs@five}{\AIMSMS@fs@fiveskip}%
  \abovedisplayskip 11\p@ \@plus3\p@ \@minus6\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6.5\p@ \@plus3.5\p@ \@minus3\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 9\p@ \@plus3\p@ \@minus5\p@
              \parsep 4.5\p@ \@plus2\p@ \@minus\p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand\footnotesize{% 9bp
  \@setfontsize\footnotesize{\AIMSMS@fs@sfive}{\AIMSMS@fs@sfiveskip}%
  \abovedisplayskip 10\p@ \@plus2\p@ \@minus5\p@
  \abovedisplayshortskip \z@ \@plus3\p@
  \belowdisplayshortskip 6\p@ \@plus3\p@ \@minus3\p@
  \def\@listi{\leftmargin\leftmargini
              \topsep 6\p@ \@plus2\p@ \@minus2\p@
              \parsep 3\p@ \@plus2\p@ \@minus\p@
              \itemsep \parsep}%
  \belowdisplayskip \abovedisplayskip}
\renewcommand\scriptsize{% 7.5bp
  \@setfontsize\scriptsize{\AIMSMS@fs@six}{\AIMSMS@fs@sixskip}}
\renewcommand\tiny{% 6.5bp
  \@setfontsize\tiny{\AIMSMS@fs@ssix}{\AIMSMS@fs@ssixskip}}
\renewcommand\large{% 15bp
  \@setfontsize\large{\AIMSMS@fs@sthree}{\AIMSMS@fs@sthreeskip}}
\renewcommand\Large{% 18bp
  \@setfontsize\Large{\AIMSMS@fs@stwo}{\AIMSMS@fs@stwoskip}}
\renewcommand\LARGE{% 22bp
  \@setfontsize\LARGE{\AIMSMS@fs@two}{\AIMSMS@fs@twoskip}}
\renewcommand\huge{% 24bp
  \@setfontsize\huge{\AIMSMS@fs@sone}{\AIMSMS@fs@soneskip}}
\renewcommand\Huge{% 26bp
  \@setfontsize\Huge{\AIMSMS@fs@one}{\AIMSMS@fs@oneskip}}
%=== end === font size definitions

\newbox\absbox
\def\abstract{\lrbox\absbox\minipage{\textwidth}%
  \normalfont%
  {\textbf{Abstract:}}\ }
\def\endabstract{\endminipage\endlrbox}

\def\keywords#1{%
  \gdef\@keywords{{\bfseries Keywords:}\ {#1}}}
\let\@keywords\@empty

\def\corraddr#1{%
  \renewcommand{\thefootnote}{\fnsymbol{footnote}}%
  \gdef\@corraddr{%
  \begin{list}{}%
  {\leftmargin2ex\labelwidth1ex\labelsep1ex\parsep0pt\topsep0pt\itemsep0pt}
  \item[{*}] {\bfseries Correspondence:} #1
  \end{list}}
}
\let\@corraddr\@empty
\def\corrauth{\footnotemark[1]}

\def\address#1{\gdef\@address{#1}}
\let\@address\@empty

\def\affilnum#1{${}^{#1}$}
\def\affil#1{${}^{#1}$}
\def\comma{${}^{\text{,}}$}

\renewcommand\maketitle{\par
  \begingroup
     \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
       \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{title}
  \endgroup
  \global\let\address\relax
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\@title\@empty
  \global\let\@address\@empty
  \global\let\corraddr\relax
  \global\let\title\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
}
\newlength\titlesep
\setlength{\titlesep}{70pt}
\def\@maketitle{% \vspace*{-1em}%
\begin{flushleft}
  {\vspace*{\titlesep}\normalsize
    {\itshape\bfseries\typeofarticle\par}
    \vskip5pt
    \bfseries\large\@title \par} %
    \vskip 1.5em %
      {\lineskip .5em%
      \bfseries\@author\par}%
    \vskip 12pt
      {\lineskip .5em%
       {\@address}\par}%
    \vskip 12pt
      {\lineskip .5em%
      {\@corraddr}\par}%
    \vskip 12pt%
      {\usebox\absbox\par}
    {\vspace{12pt}%
      {\@keywords}\par}
    \vspace{12pt}
    \noindent\rule{\textwidth}{1mm}%
\end{flushleft}
}

%\def\runningheads#1#2{\markboth{\uppercase{#1}}{\uppercase{#2}}}

\def\ps@title{%
  \def\@oddhead{\@serieslogo\hss}
  \let\@evenhead\@oddhead
  \def\@oddfoot{}
  \let\@evenfoot\@oddfoot
}

\def\@runninghead{%
  \vbox to\headheight{%
    \mbox{}\hfill\small\thepage\\[-5pt]
    \noindent\rule{\textwidth}{0.5pt}
}}
\def\ps@wpage{
  \let\@mkboth\@gobbletwo
  \def\@oddhead{\@runninghead}
  \def\@evenhead{\@oddhead}
  \def\@evenfoot{{\color[gray]{0.2}\small{\itshape\journalname}\hfill\volinfo, \pageinfo}}
  \def\@oddfoot{\@evenfoot}
}

\renewcommand{\@seccntformat}[1]{{\csname the#1\endcsname.}\hspace{0.5em}}

\newdimen\@bls
\@bls=\baselineskip

\renewcommand\section{\@startsection{section}{1}{\z@}%
     {1\@bls  plus .1\@bls minus .1\@bls}%
     {1\@bls\@afterindentfalse}%
     {\raggedright\bfseries\selectfont\protect}}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
     {\@bls plus .1\@bls minus .1\@bls}%
     {6pt\@afterindentfalse}%
     {\normalfont\selectfont\raggedright\itshape}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
     {\@bls plus .1\@bls minus .1\@bls}%
     {6pt\@afterindentfalse}%
     {\normalfont\selectfont\raggedright}}

\def\enumerate{%
  \ifnum\@enumdepth >3 \@toodeep\else\advance\@enumdepth \@ne
  \edef\@enumctr{enum\romannumeral\the\@enumdepth}\list
  {\csname label\@enumctr\endcsname}{\usecounter
  {\@enumctr}\itemsep 0pt\parsep 0pt
  \def\makelabel##1{\hss\llap{##1}}}\fi}
\let\endenumerate =\endlist

\def\itemize{%
  \ifnum \@itemdepth >3 \@toodeep\else \advance\@itemdepth \@ne
  \edef\@itemitem{labelitem\romannumeral\the\@itemdepth}%
  \list{\csname\@itemitem\endcsname}{\itemsep 0pt\parsep 0pt
  \def\makelabel##1{\hss\llap{##1}}}\fi}
\let\enditemize =\endlist

\RequirePackage[margin=2em,labelsep=period,skip=0.3em,font=normalfont]{caption}
\captionsetup[figure]{font=normalsize,labelfont=bf,singlelinecheck=true}
\captionsetup[table]{font=normalsize,labelfont=bf,singlelinecheck=true}

\def\@biblabel#1{\@ifnotempty{#1}{#1}}
\renewcommand\refname{{\bfseries References}}
\renewenvironment{thebibliography}[1]{%
  \vspace{0.8\@bls plus .1\@bls minus .1\@bls}
  \noindent{\refname}\vspace{0.8\@bls plus .1\@bls minus .1\@bls}%
  \normalfont\labelsep.5em\relax
  \renewcommand\theenumiv{\arabic{enumiv}.}\let\p@enumiv\@empty
  \list{\MakeMRLink}{\settowidth\labelwidth{\@biblabel{#1}}%
    \leftmargin\labelwidth\advance\leftmargin\labelsep\itemsep0pt
    \usecounter{enumiv}}%
  \sloppy \clubpenalty\@M \widowpenalty\clubpenalty
  \sfcode`\.=\@m
}{%
  \def\@noitemerr{\@latex@warning{Empty `thebibliography' environment}}%
  \endlist
}

\def\arXiv#1{\@ifundefined{href}
 {{\mdseries\ttfamily arxiv:#1}}
  {\href{http://arxiv.org/pdf/#1}
   {{\mdseries\ttfamily arXiv:#1}}}}
\let\arxiv\arXiv

%%%%%  new replacement to take care of reference DOIs
\let\mrlinkitem=\relax
\newcommand*{\MakeMRLink}{%
  \@ifundefined{href}{\@biblabel{\theenumiv}}{%
    \@ifundefined{mrlinkitem}{%
      \@biblabel{\theenumiv}%
    }{%
      \href{http://www.ams.org/mathscinet-getitem?mr=\mrlinkitem&return=pdf}{\@biblabel{\theenumiv}}%
    }%
  }%
}
\let\doilinkitem=\relax
\newcommand*{\doititle}[1]{%
  \@ifundefined{href}{#1}{%
    \@ifundefined{doilinkitem}{%
      #1%
    }{%
      \href{http://dx.doi.org/\doilinkitem}{#1}%
    }%
    \let\doilinkitem=\relax%
  }%
}

\def\doilink#1{\@ifundefined{href}
 {{http://dx.doi.org/#1}}
  {\href{http://dx.doi.org/#1}{{#1}}}
 }

\let\Emph\emph
\def\bibitem{\let\emph\Emph\@ifnextchar[{\@ltestbibitem}{\@testbibitem}}
\def\@testbibitem#1{\@ifnextchar({\@mrtestbibitem{#1}}{\@doitestbibitem{#1}}}
\def\@ltestbibitem[#1]#2{\@ifnextchar({\@mrtestbibitem{#2}}{\@doitestbibitem{#2}}}
\def\@doitestbibitem#1{\@ifnextchar[{\@doibibitem{#1}}{\@bibitem{#1}}}
\def\@mrtestbibitem#1(#2){\@ifnextchar[{\@mrdoibibitem#1(#2)}{\@mrbibitem#1(#2)}}
\def\@doibibitem#1[#2]{%
  \def\@tempa{}%
  \def\@tempb{#2}%
  \ifx\@tempa\@tempb
    \relax%
  \else%
    \def\doilinkitem{#2}%
    \renewcommand\emph[1]{\doititle{\Emph{##1}}}
  \fi%
  \@bibitem{#1}%
}
\def\@mrdoibibitem#1(#2)[#3]{%
  \def\@tempa{}%
  \def\@tempb{#3}%
  \ifx\@tempa\@tempb
    \relax%
  \else%
    \def\doilinkitem{#3}%
    \renewcommand\emph[1]{\doititle{\Emph{##1}}}
  \fi%
  \@mrbibitem#1(#2)%
}
\def\@mrbibitem#1(#2){%
  \def\@tempa{}%
  \def\@tempb{#2}%
  \ifx\@tempa\@tempb
    \relax%
  \else%
    \def\mrlinkitem{#2}%
  \fi%
  \@bibitem{#1}%
  \let\mrlinkitem=\relax%
}

\def\dateinfo{%
% {\fontsize{7.5}{6.5\p@}\selectfont
  Received \Received, Revised \Revised, Accepted \Accepted, Published \Published}

\def\journalinfo{%
%  {\fontsize{9}{6.5\p@}\selectfont
%  {\fontsize{9}{6.5\p@}\selectfont\bfseries\itshape
%   \journalname} \hfill %DOI:
  \@ifundefined{href}{\DOI}{\href{http://dx.doi.org/\DOI}{DOI:\DOI}}
}

\def\volinfonew{AIMS Mathematics, \currentvolume (\currentissue)}
\def\volinfo{Volume \currentvolume, Issue \currentissue}

%\def\Publname{%
% {\fontsize{7.5}{6.5\p@}\selectfont {Manuscript submitted to:}
%  \hfill \volinfo, \pageinfo}}
\def\Publname{{\volinfonew: \pageinfo}}

\def\@serieslogo{%
  \vbox to\headheight{%
    \parindent\z@ \small
    \noindent%\hspace*{-12pt}
    \begin{tabular}[b]{l}
     \includegraphics[width=0.31\textwidth]{logo.pdf} \\[2ex]
     \href{http://www.aimspress.com/journal/Math}{http://www.aimspress.com/journal/Math}
    \end{tabular}
    \hfill
    \begin{tabular}[b]{l}
      \Publname \\
      \journalinfo \\
       Received: \Received \\
       Revised: \Revised \\
      Accepted: \Accepted \\
      Published: \Published \\ [2ex]
    \end{tabular}  \par
    \noindent\rule{\textwidth}{1mm}
}}%

\let\ppages=\@empty
\def\pageinfo{\ppages\ }

\def\addr#1#2{%
  \begin{list}{}%
  {\leftmargin2ex\labelwidth1ex\labelsep1ex\parsep0pt\topsep0pt\itemsep0pt}
  \item[#1] #2
  \end{list}}

\def\shortauthors#1{\def\shortauthor{#1}}

     

\let\@shortauthors\@empty
\gdef\copyrightinfo{%
\begin{minipage}[l]{0.3\linewidth}
\includegraphics[width=0.9\textwidth]{logobottom.pdf}
\end{minipage}
\hfill
\begin{minipage}[l]{0.6\linewidth}
  \copyright\,\currentyear\, \shortauthor,
  licensee AIMS Press. This is an open access article distributed under
  the terms of the Creative Commons Attribution License
  (\href{http://creativecommons.org/licenses/by/4.0}%
   {\rmfamily http://creativecommons.org/licenses/by/4.0})
\end{minipage}
  }



\AtEndDocument{%
  \vspace{1em}
  \noindent\copyrightinfo}

\hyphenation{com-mu-ni-ca-tions}

\allowdisplaybreaks

\pagestyle{wpage}

\sloppy
