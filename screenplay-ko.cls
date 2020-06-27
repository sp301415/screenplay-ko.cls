\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{screenplay-ko}[0.0.1]
\LoadClass[10pt, titlepage]{article}

\RequirePackage{kotex}
\RequirePackage{setspace}
\RequirePackage{geometry}
\RequirePackage{enumitem}
\RequirePackage{setspace}
\RequirePackage{fontspec}

\setmainfont[BoldFont={KoPubBatangPB}]{KoPubBatangPL}
\geometry{lmargin=30mm, rmargin=30mm, tmargin=35mm, bmargin=30mm, a4paper}
\linespread{1.4}

\setlength\parindent{0pt}

\renewcommand*{\maketitle} {
\begin{titlepage}
\centering
~
\vfill
{\Huge\textbf{\@title}} \\
\vspace{\stretch{2}}
{각본\\
\@author\\
\bigskip
\@date}
\vspace{1cm}
\end{titlepage}
}

\newcounter{scene}
\setcounter{scene}{0}
\newcommand{\scene}[1]{~\\\stepcounter{scene}\textbf{\#\arabic{scene}. #1\\}}

\newenvironment{dial}{\begin{description}[align=right, itemindent= \parindent, leftmargin=3cm, labelsep=0.7cm, listparindent=\parindent]}{\end{description}}

\newcommand{\onedial}[2]{\begin{description}[align=right, itemindent= \parindent, leftmargin=3cm, labelsep=0.7cm, listparindent=\parindent] \item[#1] #2 \end{description}}

\newcommand{\ch}[1]{\item[#1]}
  
\newcommand{\theend}{\begin{center}\texttt{the end.}\end{center}}

\newcommand{\cutto}{\begin{flushright}\texttt{CUT TO:}\end{flushright}}

\newcommand{\super}[1]{\begin{flushright}\texttt{SUPER:}\end{flushright} \begin{center} \underline{#1} \end{center}}

\newcommand{\supertitle}[1]{\begin{flushright}\texttt{SUPER:}\end{flushright} \begin{center} \textbf{\underline{#1}} \end{center}}
