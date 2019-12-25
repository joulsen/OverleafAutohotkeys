; SI-unit
!s::
SendRaw \si{}
Send {Left 1}
return

; SI-number
!+s::
SendRaw \SI{}{}
Send {Left 3}
return

; Number in SIunitx
!n::
SendRaw \num{}
Send {Left 1}
return

; V RMS unit
!v::
SendRaw \si{V_{RMS}}
return

; V RMS number
!+v::
SendRaw \SI{}{V_{RMS}}
Send {Left 10}
return
