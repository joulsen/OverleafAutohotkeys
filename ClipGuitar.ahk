SafePaste(content)
{
    temp := clipboard
    Sleep, 10
    clipboard := content
    Sleep, 10
    Send, ^v
    Sleep, 100
    clipboard := temp
    Sleep, 10
}

; Set only in Overleaf
SetTitleMatchMode, 2
#IfWinActive Overleaf
#Hotstring, ? *

::!bmat::
    SafePaste("\begin{bmatrix}  \end{bmatrix}")
    Send, {Left 14}
    return

::!pmat::
    SafePaste("\begin{pmatrix}  \end{pmatrix}")
    Send, {Ctrl down}{Left 4}{Ctrl Up}{Left 2}
    return

::!subeqb::
    SafePaste("\begin{subequations}")
    return

::!subeqe::
    SafePaste("\end{subequations}")
    return

::!subeq::
    SafePaste("\begin{subequations}`n\begin{align}`n`n\end{align}`n\end{subequations}")
    Send, {Up 2}{Tab}
    return

::_::
    SafePaste("_{}")
    Send, {Left 1}
    return

::^::
    SafePaste("^{}")
    Send, {Left 1}
    return

::!si::
    SafePaste("\SI{}{}")
    Send {Left 3}
    return

::!al::
    SafePaste("\begin{align} `n`n\end{align}")
    Send {Up 1}{Tab}
    return

::!fig::
    SafePaste("\begin{figure}[H]`n    \centering`n    \includegraphics[width=\linewidth]{}`n    \caption{<++>}`n    \label{fig:<++>}`n\end{figure}")
    Send {Up 3}{Right 27}
    return

+Tab::
    Send, {Esc}
    Send, /
    Sleep, 10
    SendRaw, <\+\+>
    Sleep, 10
    Send, {Enter}
    Sleep, 20
    Send 4x
    Send, i
    return

+Space::
    Send, {Esc}Ea
    return

::!subfile::
    SafePaste("\documentclass[master.tex]{subfiles}`n\begin{document}")
    Send, {Esc}
    Sleep, 10
    Send, Go
    SafePaste("\end{document}")
    Send {Esc}gg
    return

::!(::
    SafePaste("\left(  \right)")
    Send {Left 8}
    return

::!tx::
    SafePaste("\text{}")
    Send {Left}
    return