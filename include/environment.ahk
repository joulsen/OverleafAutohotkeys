; Figure environment
^!f::
SendRaw \begin{figure}
Send {Enter}
return

; Align environment
^!a::
SendRaw \begin{align}
Send {Enter}
return

; Align* environment
^+!a::
SendRaw \begin{align*}
Send {Enter}
return
