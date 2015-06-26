%%
%% This is file `pubciencias-libro.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% pubciencias-libro.dtx  (with options: `PubCiencias')
%% 
%% IMPORTANT NOTICE:
%% 
%% For the copyright see the source file.
%% 
%% Any modified versions of this file must be renamed
%% with new filenames distinct from pubciencias-libro.cls.
%% 
%% For distribution of the original source see the terms
%% for copying and modification in the file pubciencias-libro.dtx.
%% 
%% This generated file may be distributed as long as the
%% original source files, as listed above, are part of the
%% same distribution. (The sources need not necessarily be
%% in the same archive or directory.)
\NeedsTeXFormat{LaTeX2e}[2009/09/24]
\ProvidesClass{pubciencias-libro}[2012/02/16 v1.0 Primera versión]
\newcommand\@series{}
\newcommand\@serie{}
\newcommand\@idioma{}
\DeclareOption{10pt}{\PassOptionsToClass{10pt}{book}}
\DeclareOption{11pt}{\PassOptionsToClass{11pt}{book}}
\DeclareOption{12pt}{\PassOptionsToClass{12pt}{book}}
\DeclareOption{spanish}{\renewcommand\@idioma{spanish,es-nolayout,es-tabla}}

\DeclareOption{english}{\renewcommand\@idioma{english}}
\DeclareOption{generico}{
    \renewcommand\@series{Libros Generico}
    \renewcommand\@serie{Libro Generico}
    \AtBeginDocument{\newlength{\finaldepag}}}
\DeclareOption{cfisica}{
    \renewcommand\@series{Cuadernos de Fisica}
    \renewcommand\@serie{Cuaderno de Fisica}
    \PassOptionsToPackage{paperwidth=18cm,paperheight=26cm,twoside,%
            left=2.2cm,right=1.7cm,top=2.25cm,bottom=2cm}{geometry}
    \AtBeginDocument{\setlength{\finaldepag}{1.5cm}}}
\DeclareOption{cuaderno}{
    \renewcommand\@series{Cuadernos}
    \renewcommand\@serie{Cuaderno}
    \PassOptionsToPackage{paperwidth=16.5cm,paperheight=23.5cm,twoside,%
            left=2.2cm,right=1.7cm,top=2cm,bottom=2cm}{geometry}
    \AtBeginDocument{\setlength{\finaldepag}{1.5cm}}}
\DeclareOption{cmatematica}{
    \renewcommand\@series{Cuadernos de Matemática}
    \renewcommand\@serie{Cuaderno de Matemática}
    \PassOptionsToPackage{paperwidth=18cm,paperheight=26cm,twoside,%
            left=2.2cm,right=1.7cm,top=2.25cm,bottom=2cm}{geometry}
    \AtBeginDocument{\setlength{\finaldepag}{1.5cm}}}
\DeclareOption{cgerencia}{
    \renewcommand\@series{Cuadernos de Gerencia}
    \renewcommand\@serie{Cuaderno de Gerencia}
    \PassOptionsToPackage{paperwidth=18cm,paperheight=26cm,twoside,%
            left=2.2cm,right=1.7cm,top=2.25cm,bottom=2cm}{geometry}
    \AtBeginDocument{\setlength{\finaldepag}{1.5cm}}}

\ExecuteOptions{spanish,generico}
\ProcessOptions\relax
\LoadClass{book}
%\RequirePackage[latin9]{inputenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[\@idioma]{babel}

\RequirePackage{ifthen}
\RequirePackage{calc}

\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{fancyhdr}
\RequirePackage{textcase}
\RequirePackage{nextpage}
\RequirePackage[font={small},labelfont={bf,small},%
                justification=centerlast]{caption}
\RequirePackage{geometry}
\RequirePackage[colorlinks,linkcolor=black,urlcolor=black,%
                citecolor=black,breaklinks=true,%
                bookmarks=true]{hyperref}
\newcommand\@interlineado{1.0}
\newcommand\@subtitulo{}
\newcommand\@sepsubtitulo{:}
\newcommand\@logouno{LogoCiencias}
\newcommand\@logodos{LogodMatematica}
\newcommand\@logotres{}
\newcommand\@escalalogouno{0.17}
\newcommand\@escalalogodos{0.17}
\newcommand\@escalalogotres{0.17}
\newcommand\@editor{}
\newcommand\@revision{}
\newcommand\@asisedicion{}
\newcommand\@portada{}
\newcommand\@asistente{}
\newlength{\longtitulo}
\newlength{\longsubtitulo}
\newlength{\espacio}

\AtBeginDocument{
    \settowidth{\longtitulo}{\LARGE\sc \@titulo}
    \settowidth{\longsubtitulo}{\Large\itshape \@subtitulo}
    \setlength{\unitlength}{\minof{\maxof{\longtitulo}{\longsubtitulo}}
                           {\textwidth}}}
\newcommand{\autor}[2][]{\ifthenelse{\equal{#1}{}}
    {\newcommand\@autorcorto{#2}\newcommand\@autor{#2}}
    {\newcommand\@autorcorto{#1}\newcommand\@autor{#2}}}
\newcommand{\titulo}[1]{\newcommand\@titulo{#1}}
\newcommand{\subtitulo}[2][]{\ifthenelse{\not\equal{#1}{}}
    {\renewcommand\@sepsubtitulo{#1}}{}\renewcommand\@subtitulo{#2}}
\newcommand{\numero}[1]{\newcommand\@numero{#1}}
\newcommand{\logouno}[2][0.17]{\renewcommand\@logouno{#2}
    \renewcommand\@escalalogouno{#1}}
\newcommand{\logodos}[2][0.17]{\renewcommand\@logodos{#2}
    \renewcommand\@escalalogodos{#1}}
\newcommand{\logotres}[2][0.17]{\renewcommand\@logotres{#2}
    \renewcommand\@escalalogotres{#1}}
\newcommand{\idioma}[1]{\renewcommand\@idioma{#1}}
\newcommand{\editor}[1]{\renewcommand\@editor{#1}}
\newcommand{\asisedicion}[1]{\renewcommand\@asisedicion{#1}}
\newcommand{\revision}[1]{\renewcommand\@revision{#1}}
\newcommand{\asistente}[1]{\renewcommand\@asistente{#1}}
\newcommand{\portada}[1]{\renewcommand\@portada{#1}}
\newcommand{\registroautoral}[1]{\newcommand\@regautoral{#1}}
\newcommand{\ISBN}[1]{\newcommand\@ISBN{#1}}
\newcommand{\fechapub}[1]{\newcommand\@fechapub{#1}}
\newcommand{\edicion}[2]{\newcommand\@edicion{#1}
    \newcommand\@fechaedicion{#2}}
\newcommand{\impresion}[3][]{\newcommand\@impresion{#2}
    \newcommand\@fechaimpresion{#3}\newcommand\@correcciones{#1}}
\newcommand{\serie}[2]{\renewcommand\@serie{#2}
    \renewcommand\@series{#1}}
\newcommand{\interlineado}[1]{\renewcommand\@interlineado{#1}}
\newcommand\portadilla{
\frontmatter
 \begin{spacing}{1.0}
 \thispagestyle{empty}
 \begingroup
 \vspace*{0.005\textheight}\centering
  {\Large\scshape \@series}\\[0.5\baselineskip]
  {\Large\scshape de la Escuela Politécnica Nacional}\\[7.5\baselineskip]
  \vspace{\espacio}
  {\large\scshape \@autorcorto}\\[0.5\baselineskip]
  \rule{\unitlength}{1.6pt}\\\vspace*{-\baselineskip}\vspace*{2pt}
  \rule{\unitlength}{0.4pt}\\[0.5\baselineskip]
  \begin{spacing}{1}
   \ifthenelse{\equal{\@subtitulo}{}}
    {\LARGE \textsc{\@titulo}}
    {{\LARGE \textsc{\@titulo}}\\[\baselineskip]
    {\Large\itshape \@subtitulo}}
  \end{spacing}\vspace*{-0.5\baselineskip}
  \rule{\unitlength}{0.4pt}\\\vspace*{-\baselineskip}\vspace{3.2pt}
  \rule{\unitlength}{1.6pt}\\[\baselineskip]
  \par\vfill
  \ifthenelse{\equal{\@logotres}{}}
   {\includegraphics[scale=\@escalalogouno]{\@logouno}\hspace{7em}
    \includegraphics[scale=\@escalalogodos]{\@logodos}}
   {\includegraphics[scale=\@escalalogouno]{\@logouno}\hspace{2.75em}
    \includegraphics[scale=\@escalalogodos]{\@logodos}\hspace{2.75em}
    \includegraphics[scale=\@escalalogotres]{\@logotres}}
  \par\vspace*{\finaldepag}
 \newpage
 \thispagestyle{empty}
 \raggedright
 \vspace*{\baselineskip}
 {\large\textbf{\@serie\ No. \@numero}}\\[0.2\baselineskip]
 {\large\scshape \ifthenelse{\equal{\@subtitulo}{}}
   {\@titulo}
   {\@titulo\@sepsubtitulo\ \@subtitulo}} \\[0.2\baselineskip]
 {\large\scshape \@autor}
 \par
 {\small
 \vspace*{4\baselineskip}
 \ifthenelse{\equal{\@editor}{}}{}
   {\textbf{Responsable de la Edición}: \@editor \\}
 \ifthenelse{\equal{\@revision}{}}{}
   {\textbf{Revisión técnica}: \@revision \\}
 \ifthenelse{\equal{\@asisedicion}{}}{}
   {\textbf{Asistente de Edición}: \@asisedicion \\}
 \ifthenelse{\equal{\@asistente}{}}{}
   {\textbf{Asistentes}: \@asistente \\}
 \ifthenelse{\equal{\@portada}{}}{}
   {\textbf{Portada}: \@portada\par}
 \vspace*{4\baselineskip}
 Registro de derecho autoral No. \@regautoral\\
 ISBN: \@ISBN\par
 \vspace*{4\baselineskip}
 Publicado por la Unidad de Publicaciones de la Facultad de
 Ciencias de la Escuela Politécnica Nacional,
 Ladrón de Guevara E11-253, Quito, Ecuador.
 \par
 \vspace*{4\baselineskip}
 \@edicion\ edicion: \@fechaedicion\\
 \ifthenelse{\equal{\@correcciones}{}}
   {\@impresion\ impresion: \@fechaimpresion}
   {\@impresion\ impresion (con correcciones): \@fechaimpresion}\par
 \vspace*{4\baselineskip}
 \copyright \ Escuela Politécnica Nacional \@fechapub}
 \endgroup
\end{spacing}
% \cleartooddpage[\thispagestyle{empty}]
}


\renewcommand{\baselinestretch}{\@interlineado}
\pagestyle{fancy}
\renewcommand{\chaptermark}[1]{%
\markboth{#1}{}}
\renewcommand{\sectionmark}[1]{%
\markright{\thesection\ #1}}
\fancyhf{}
\fancyhead[LE,RO]{\bfseries\thepage}
\fancyhead[LO]{\bfseries\nouppercase{\rightmark}}
\fancyhead[RE]{\bfseries\nouppercase{\leftmark}}
\renewcommand{\headrulewidth}{.2pt}
\renewcommand{\footrulewidth}{0pt}
\addtolength{\headheight}{.1pt}

\newcommand{\tabladecontenidos}{
    \tableofcontents\cleartooddpage[\thispagestyle{empty}]}
\newcommand{\listadefiguras}{
    \listoffigures\cleartooddpage[\thispagestyle{empty}]}
\newcommand{\listadetablas}{
    \listoftables\cleartooddpage[\thispagestyle{empty}]}
\newenvironment{agradecimiento}[1][Agradecimientos]
    {\thispagestyle{empty}
     \vspace*{5\baselineskip}
     \begin{center}
      \textbf{\MakeUppercase{#1}}\\[2\baselineskip]
     \end{center}}
    {\cleartooddpage[\thispagestyle{empty}]}
\newenvironment{dedicatoria}[1][\ ]
    {\thispagestyle{empty}
     \vspace*{8\baselineskip}
     \begin{flushright}
     \textbf{\MakeUppercase{#1}}\\[1\baselineskip]
     \begingroup\itshape}
    {\endgroup\end{flushright}
     \cleartooddpage[\thispagestyle{empty}]}
\endinput
%%
%% End of file `pubciencias-libro.cls'.