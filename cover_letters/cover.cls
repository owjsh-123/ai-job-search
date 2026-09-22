% Minimal one-page cover letter class.
% Compile with: xelatex cover_example.tex
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cover}[2026/01/01 Simple one-page cover letter class]
\LoadClass[11pt,a4paper]{article}

\RequirePackage[margin=1in]{geometry}
\RequirePackage{fontspec}
\RequirePackage{parskip}

% Uses a system font by default so this compiles with no extra setup.
% To match the CV's look more closely, drop Lato/Raleway .ttf files into
% ./OpenFonts/ and swap the line below for:
%   \setmainfont{Lato}[Path=./OpenFonts/,Extension=.ttf,
%     UprightFont=*-Regular,BoldFont=*-Bold,ItalicFont=*-Italic]
\setmainfont{Latin Modern Sans}

\newcommand{\sender}[1]{\def\@sender{#1}}
\newcommand{\senderaddress}[1]{\def\@senderaddress{#1}}
\newcommand{\recipient}[1]{\def\@recipient{#1}}
\newcommand{\recipientcompany}[1]{\def\@recipientcompany{#1}}
\newcommand{\lettersubject}[1]{\def\@lettersubject{#1}}

\renewcommand{\maketitle}{%
  \noindent\@sender \\ \@senderaddress
  \vspace{1.5em}

  \noindent\today
  \vspace{1.5em}

  \noindent\@recipient \\ \@recipientcompany
  \vspace{1.5em}

  \noindent\textbf{Re: \@lettersubject}
  \vspace{1em}
}

\newcommand{\closing}[1]{%
  \vspace{1.5em}
  \noindent Sincerely, \\[2em]
  \noindent #1
}
