-- Tex snippets
local luasnip = require("luasnip")
local s = luasnip.snippet
local i = luasnip.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
  s(
    "main",
    fmt(
      [[
\documentclass[
english,
]{article}

\input{summary_preamble}

%\makeglossaries
%\loadglsentries{Glossar/Glossar1.tex}

\begin{document}

\maketitle
\thispagestyle{fancy}

\begin{multicols*}{2}[
\section*{Table of Contents}
]
\tableofcontents
\end{multicols*}
\newpage

\subfile{Sections/<>/<>.tex}
\newpage

\end{document}
<>
      ]],
      {
        i(1, "sectiondir"),
        i(2, "sectionfile"),
        i(3),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "section",
    fmt(
      [[
\documentclass[
../../<>.tex,
]
{subfiles}
    
\externaldocument[ext:]{../../<>.tex}
\graphicspath{{../../}}

\begin{document}
\section{<>}
<>

\end{document}
<>
      ]],
      {
        i(1, "mainfile"),
        i(2, "mainfile"),
        i(3, "section"),
        i(4, "text"),
        i(5),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "boxg",
    fmt(
      [[
\begin{center}
    \begin{smalldefbox*}
        <>
    \end{smalldefbox*}
\end{center}
<>
]],
      {
        i(1, "Text"),
        i(2),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "boxd",
    fmt(
      [[
\begin{defbox}[<>]
  <>
\end{defbox}
<>
      ]],
      {
        i(1, "Title"),
        i(2, "Definition"),
        i(3),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "boxdsplit",
    fmt(
      [[
\begin{minipage}[t]{0.496\textwidth}
  \centering
  \begin{defbox}[<>]
    <>
  \end{defbox}
\end{minipage}
\begin{minipage}[t]{0.496\textwidth}
  \centering
  \begin{defbox}[<>]
    <>
  \end{defbox}
\end{minipage}
<>
      ]],
      {
        i(1, "Title1"),
        i(2, "Definition1"),
        i(3, "Title2"),
        i(4, "Definition2"),
        i(5),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "listitems",
    fmt(
      [[
\begin{itemize}
  \item <>
  \item <>
\end{itemize}
<>
      ]],
      {
        i(1, "Item1"),
        i(2, "Item2"),
        i(3),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "listitemsdef",
    fmt(
      [[
\begin{itemize}
  \item \defc{<>} <>
  \item \defc{<>} <>
\end{itemize}
<>
      ]],
      {
        i(1, "Item:"),
        i(2, "Desc"),
        i(3, "Item:"),
        i(4, "Desc"),
        i(5),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "listnum",
    fmt(
      [[
\begin{enumerate}
  \item <>
  \item <>
\end{enumerate}
<>
      ]],
      {
        i(1, "Item1"),
        i(2, "Item2"),
        i(3),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "image",
    fmt(
      [[
\begin{figure}
    [htp]
    \centering
    \includegraphics[width=0.5\textwidth]{Pics/<>/<>.png}
\end{figure}
<>
      ]],
      {
        i(1, "01"),
        i(2, "image"),
        i(3),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "image",
    fmt(
      [[
\begin{minipage}
    [t]{0.45\textwidth}
    \centering
    \includegraphics[width=\textwidth]{Pics/<>/<>.png}
\end{minipage}
\hfill
\begin{minipage}
    [t]{0.55\textwidth}
    \centering
    \includegraphics[width=\textwidth]{Pics/<>/<>.png}
\end{minipage}
<>
      ]],
      {
        i(1, "01"),
        i(2, "image"),
        i(3, "01"),
        i(4, "image"),
        i(5),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "sub",
    fmt(
      [[
\subsection{<>}
<>
      ]],
      {
        i(1, "Subsection"),
        i(2),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "subsub",
    fmt(
      [[
\subsubsection{<>}
<>
      ]],
      {
        i(1, "Subsubsection"),
        i(2),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "def",
    fmt(
      [[
\defc{<>}
<>
      ]],
      {
        i(1, "Text"),
        i(2),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "pseudocode",
    fmt(
      [[
\begin{codebox}
    [<>]
    \begin{algorithm}[H]
        \SetKwFunction{trs}{<>}
        \Fn{\trs{problem, strategy}}{
            initialize search tree with initial state of problem\;
            \While{\KwTrue}{
                \If{<>}{
                    \KwRet <>
                    }
                \ElseIf{<>}{
                    \KwRet <>
                }
                \Else{
                    <>
                }
            }
        }
    \end{algorithm}
\end{codebox}
<>
    ]],
      {
        i(1, "Title"),
        i(2, "function"),
        i(3, "condition"),
        i(4, "returnvalue"),
        i(5, "condition"),
        i(6, "returnvalue"),
        i(7, "elsecode"),
        i(8),
      },
      { delimiters = "<>" }
    )
  ),

  s(
    "table",
    fmt(
      [[
\begin{table}[h!]
    \centering
    \begin{tabular}{|>>{\raggedright\arraybackslash}m{4cm}|>>{\raggedright\arraybackslash}m{5cm}|>>{\raggedright\arraybackslash}m{5cm}|}
    \hline
    \textbf{<>} & \textbf{<>} & \textbf{<>} \\
    \hline
    <> & <> & <> \\
    \hline
    \end{tabular}
    \caption{<>}
\end{table}
<>
      ]],
      {
        i(1, "rowtitle1"),
        i(2, "rowtitle2"),
        i(3, "rowtitle3"),
        i(4, "row1"),
        i(5, "row2"),
        i(6, "row3"),
        i(7, "caption"),
        i(8),
      },
      { delimiters = "<>" }
    )
  ),
}
