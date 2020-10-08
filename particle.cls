\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{particle}[3/5/2015 custom nak class]
\LoadClass[11pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{cmbright}

\RequirePackage[ngerman]{babel}
\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}

\RequirePackage[parfill]{parskip}

\RequirePackage[left=2cm,right=2cm,top=2.5cm,bottom=2.5cm,headheight=0cm]{geometry}

\RequirePackage{sectsty}
\sectionfont{\large\selectfont}
\subsectionfont{\normalsize\selectfont}

\RequirePackage{titling}
\pretitle{\begin{center}\bfseries\large}
\posttitle{\end{center}\vspace{2pt}}
\preauthor{\begin{center}\footnotesize\begin{tabular}[t]{c}}
\postauthor{\end{tabular}\end{center}\vspace{1pt}}
