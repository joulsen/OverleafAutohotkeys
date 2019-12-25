; Fraction
!f::
SendRaw \frac{}{}
Send {Left 3}
return

; Parentheses
!p::
Send \left(  \right){Left 8}
return

; Center dot
!c::
Send {Space}\cdot{Space}
return
