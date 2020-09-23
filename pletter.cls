\NeedsTeXFormat{LaTeX2e} \ProvidesClass{alterlttr}[2020/18/08 a pretty letter class by Niklas Paulicks]
\LoadClass[fontsize=11pt, DIN, enlargefirstpage]{scrlttr2}

\newcommand{\backaddress}{false}
\newcommand{\foldmarks}{false}
\newcommand{\headsepline}{false}
\DeclareOption{foldmarks}{\renewcommand{\foldmarks}{true}}
\DeclareOption{headsepline}{\renewcommand{\headsepline}{true}}
\DeclareOption{postal}{
  \renewcommand{\foldmarks}{true}
  \renewcommand{\backaddress}{true}
}
\ProcessOptions\relax

% Geometry
\RequirePackage[left=2cm,right=2cm,top=5cm,bottom=1.69cm]{geometry}

% Roboto fonts
\RequirePackage[sfdefault]{roboto}

% Input incoding
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}

% German lang
\RequirePackage[ngerman]{babel}

% Paragraph breaks
\RequirePackage[parfill]{parskip}

% Graphic package for logos
\RequirePackage{graphicx}


\KOMAoptions{
  foldmarks=\foldmarks,
  headsepline=\headsepline,
  backaddress=\backaddress,
  fromemail=true,
  fromphone=true,
  fromalign=right,
  firstfoot=false,
}
\setkomavar{date}{\today}
\setkomafont{subject}{\bfseries}

\renewcommand{\raggedsignature}{\raggedright}

\newcommand{\subject}[1]{\setkomavar{subject}{#1}}
\newcommand{\fromname}[1]{\setkomavar{fromname}{#1}}
\newcommand{\fromaddress}[1]{\setkomavar{fromaddress}{#1}}
\newcommand{\fromphone}[1]{\setkomavar{fromphone}{#1}}
\newcommand{\fromemail}[1]{\setkomavar{fromemail}{#1}}
\newcommand{\place}[1]{\setkomavar{place}{#1}}
\newcommand{\signature}[1]{\setkomavar{signature}{#1}}
