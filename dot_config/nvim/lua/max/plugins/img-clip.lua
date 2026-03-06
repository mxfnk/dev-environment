return {
  "HakonHarnes/img-clip.nvim",
  event = "VeryLazy",
  opts = {
    -- Allgemeine Standardeinstellungen
    default = {
      dir_path = "Pics", -- Speichert alle Bilder automatisch in deinem "Pics" Ordner
      prompt_for_file_name = true, -- Fragt dich kurz, wie das Bild heißen soll (z.B. "diagramm1")
    },
    -- Dateityp-spezifische Einstellungen
    filetypes = {
      tex = {
        -- Das ist die Magie: Das Template, das in LaTeX eingefügt wird
        template = [[
\begin{figure}[htbp]
  \centering
  \includegraphics[width=0.8\textwidth]{$FILE_PATH}
  \caption{$CURSOR}
  \label{fig:$FILE_NAME}
\end{figure}
]],
      },
    },
  },
  keys = {
    -- Dein Tastenkürzel zum Einfügen (im Normalmodus)
    { "<leader>p", "<cmd>PasteImage<cr>", desc = "Bild aus Zwischenablage einfügen" },
  },
}
