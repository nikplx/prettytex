\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{naklatex}[3/5/2015 custom nak class]
\LoadClass[12pt,a4paper,titlepage]{article}
% Pakete
\RequirePackage{pdfpages}
\RequirePackage{pdflscape}
\RequirePackage[ngerman]{babel}
\RequirePackage[style=ieee]{biblatex}[release date]
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{csquotes}
\RequirePackage{caption}
\captionsetup[table]{position=bottom}
% Pretty headers
\RequirePackage{fancyhdr}
% Font rendering
\RequirePackage{lmodern}
%Hyperlink and URL breaks
\RequirePackage{url}
\RequirePackage[hidelinks]{hyperref}
% Graphic Package
\RequirePackage{graphicx}
%Microtype
\RequirePackage{microtype}
%Float package
\RequirePackage{float}
%Euro Symbol
\RequirePackage{eurosym}
% Don't break on new paragraph
\RequirePackage[parfill]{parskip}
% Footer on same height
\RequirePackage[bottom]{footmisc}
% Configure Page geometry here
\RequirePackage[left=2cm,right=2cm,top=2cm,bottom=2cm,includeheadfoot,headheight=25pt]{geometry}
% Break page on new section
% \RequirePackage{titlesec}
% Lines height
\RequirePackage{setspace}
\setstretch{1.25}
% Listings
\RequirePackage{listings}
% Needed for own listing languages
\RequirePackage{xcolor}
\RequirePackage{textcomp}
% Tabular Mods
\RequirePackage{tabularx}
\RequirePackage{colortbl}
% Glossary
\RequirePackage[acronym, xindy]{glossaries}
\GlsSetXdyCodePage{duden-utf8}
% Appendix
\RequirePackage[toc, page]{appendix}
% German word breaks
\RequirePackage[ngerman=ngerman-x-latest]{hyphsubst}
\sloppy

% Fancy Header and Footer
\pagestyle{fancy}
\fancyhf{} % Clear out headers and footers
\fancyhead[L]{\@author}
\fancyhead[R]{\includegraphics[height=15pt]{image/Nordakademie_Logo_klein.jpg}}
\fancyfoot[C]{\thepage} % Page Num

% Four level sub section
\newcommand{\subsubsubsection}[1]{\paragraph{#1}\mbox{}\\}

% Titel Seite
\renewcommand{\maketitle}{
  \IfFileExists{documents/title.pdf}{
    \includepdf[pages=-]{documents/title.pdf}
  }{
	\thispagestyle{empty}
	\begin{titlepage}
		\center
                % Logo
		\includegraphics[width=\textwidth]{image/Nordakademie_Logo_gross.jpg}\\[2cm]

                % Title
		{ \huge \bfseries \@title}\\[1.4cm] % Title of your document

                % Subtitle \textsc{\Large \@subtitle}\\[0.5cm] % Major heading such as course name

		\begin{minipage}{0.4\textwidth}
			\begin{center} \large
				\emph{Autor}\\
				\@author\\ % Your name
                                % \vspace{1em}
                                % \emph{Gutachter} \\
                                % \@evaluator \\
			\end{center}
		\end{minipage}
		\\[4cm]

                % Date
		{\large \today}\\[3cm] % Date, change the \today to a set date if you want to be precise

		\vfill % Fill the rest of the page with whitespace
	\end{titlepage}}
  }

\newcommand{\glossaries}{
    \newpage
    \addcontentsline{toc}{section}{Akronyme}
    \printglossaries}

\newcommand{\romannumbering}{
	\pagenumbering{Roman}
	\setcounter{page}{1}}

\newcommand{\arabicnumbering}{
	\newcounter{frontmatter}
	\setcounter{frontmatter}{\value{page}}
    \newpage
	\pagenumbering{arabic}
	\setcounter{page}{1}}

\newcommand{\romannumberingtwo}{
    \newpage
	\pagenumbering{Roman}
    \addtocounter{frontmatter}{1}
	\setcounter{page}{\value{frontmatter}}}

\newcommand{\contents}{
	\newpage
	\addcontentsline{toc}{section}{Inhaltsverzeichnis}
	\tableofcontents}

\newcommand{\figures}{
	\newpage
	\addcontentsline{toc}{section}{Abbildungsverzeichnis}
	\listoffigures}

\newcommand{\tables}{
	\addcontentsline{toc}{section}{Tabellenverzeichnis}
	\listoftables}


\newcommand{\heading}[1]{
	\newpage
	\addcontentsline{toc}{section}{#1}
	\section*{#1}}

\newcommand{\references}{
	\addcontentsline{toc}{section}{Literatur}
    \printbibliography}

\newcommand{\glossar}{
    \newpage
    \addcontentsline{toc}{section}{Glossar}
    \printglossary}

\newcommand{\acronyms}{
    \newpage
    \addcontentsline{toc}{section}{Akronyme}
    \printacronyms}

\newcommand{\listingsindex}{
    \newpage
    \addcontentsline{toc}{section}{Listings}
    \lstlistoflistings}

\newcommand{\nondisclosure}[1]{
        \heading{Sperrvermerk}\label{sec:nondisclosure}
        Die vorgelegte Semesterarbeit basiert auf internen, vertraulichen Daten und 
        Informationen des Unternehmens #1. In diese Arbeit dürfen Dritte, 
        mit Ausnahme der Gutachter und befugten Mitgliedern des Prüfungsausschusses, 
        ohne ausdrückliche Zustimmung des Unternehmens und des Verfassers keine 
        Einsicht nehmen. Eine Vervielfältigung und Veröffentlichung 
        der Semesterarbeit ohne ausdrückliche Genehmigung – auch auszugsweise – 
        ist nicht erlaubt.
}

\newenvironment{mainmatter}{\arabicnumbering}{\newpage}
\newenvironment{frontmatter}{\romannumbering}{\newpage}
\newenvironment{backmatter}{\romannumberingtwo}{}
\newenvironment{append}{
    \clearpage\pagestyle{plain}
    \begin{appendix}
		\renewcommand{\thesection}{\Roman{section}}
	}{\end{appendix}}

\newcommand*{\evaluator}[1]{\gdef\@evaluator{#1}}
\newcommand*{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand*{\subsubtitle}[1]{\gdef\@subsubtitle{#1}}
\newcommand*{\authoraddress}[1]{\gdef\@authoraddress{#1}}
\newcommand*{\evaluatoraddress}[1]{\gdef\@evaluatoraddress{#1}}

\newcommand{\affirmationMultiAuthor}{
  \newpage
    \heading{Eidesstattliche Erklärung}

  Hiermit erklären wir, dass wir die vorliegende Arbeit eigenständig
  und ohne fremde Hilfe angefertigt haben. Textpassagen, die wörtlich
  oder dem Sinn nach auf Publikationen oder Vorträgen anderer Autoren
  beruhen, sind als solche kenntlich gemacht.

  Die Arbeit wurde bisher keiner anderen Prüfungsbehörde vorgelegt und
  auch noch nicht veröffentlicht.

 \vspace{2cm}
 \signatureline}

\newcommand{\affirmation}{
  \IfFileExists{documents/affirmation.pdf}{
    \includepdf[pages=-1]{documents/affirmation.pdf}
  }{
    \newpage
    \heading{Eidesstattliche Erklärung}

    Hiermit erkläre ich, dass wir ich vorliegende Arbeit eigenständig
    und ohne fremde Hilfe angefertigt habe. Textpassagen, die wörtlich
    oder dem Sinn nach auf Publikationen oder Vorträgen anderer Autoren
    beruhen, sind als solche kenntlich gemacht.

    Die Arbeit wurde bisher keiner anderen Prüfungsbehörde vorgelegt und
    auch noch nicht veröffentlicht.

    \vspace{2cm}
    \signatureline{image/signature.png}}}


\newcommand{\signatureline}[1]{
 \IfFileExists{documents/affirmation.pdf}
 \@authoraddress~den~\today
 \begin{figure}[h]
    \begin{minipage}{0.2\linewidth}
     \includegraphics[height=2cm]{#1}
    \end{minipage}
    \hrule
 \end{figure} \\
 \@author}
