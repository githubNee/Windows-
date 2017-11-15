<^Space::SendInput, #{Space}

; numpad & specific symbols
>!Space::SendInput, 0
>!m::SendInput, 1
>!,::SendInput, 2
>!.::SendInput, 3
>!j::SendInput, 4
>!k::SendInput, 5
>!l::SendInput, 6
>!u::SendInput, 7
>!i::SendInput, 8
>!o::SendInput, 9
>!+m::SendRaw, !
>!+,::SendInput, @
>!+.::SendRaw, #
>!+j::SendInput, $
>!+k::SendInput, `%
>!+l::SendRaw, ^
>!+u::SendInput, &
>!+i::SendInput, *
>!+o::SendInput, (
>!+p::SendInput, )

<!q::SendInput, !{F4}

; vim mode
<!j::SendInput, {Left}
<!k::SendInput, {Down}
<!l::SendInput, {Right}
<!i::SendInput, {Up}
<!h::SendInput, ^{Left}
<!`;::SendInput, ^{Right}
<!u::SendInput, {Home}
<!o::SendInput, {End}
<!p::SendInput, {BackSpace}
<!+j::SendInput, +{Left}
<!+k::SendInput, +{Down}
<!+l::SendInput, +{Right}
<!+i::SendInput, +{Up}
<!+h::SendInput, ^+{Left}
<!+`;::SendInput, ^+{Right}
<!+u::SendInput, +{Home}
<!+o::SendInput, +{End}
<!+p::SendInput, {Delete}
^<!p::SendInput, ^{BackSpace}
^<!+p::SendInput, ^{Delete}

; better input
$'::SendInput, "
$+'::SendInput, '
$[::SendRaw, {
$+[::SendInput, [
$]::SendRaw, }
$+]::SendInput, ]

<![::SendInput, {WheelUp}{Up 3}
<!]::SendInput, {WheelDown}{Down 3}
>![::SendInput, {WheelUp}
>!]::SendInput, {WheelDown}

; mouse mode
rightShift := false
RShift::
	rightShift := !rightShift
	CoordMode, ToolTip
	if rightShift
		ToolTip, Mouse Mode, 0, 0
	else
		ToolTip
return
#if rightShift
	u::LButton
	o::RButton

	j::MouseMove, -20, 0, 0, R
	k::MouseMove, 0, 20, 0, R
	l::MouseMove, 20, 0, 0, R
	i::MouseMove, 0, -20, 0, R
	
	`;::WheelUp
	Space::WheelDown
	
	^j::MouseMove, -100, 0, 0, R
	^k::MouseMove, 0, 100, 0, R
	^l::MouseMove, 100, 0, 0, R
	^i::MouseMove, 0, -100, 0, R
#if

; SetCapsLockState, AlwaysOff
; CapsLock::Ctrl
; Ctrl::CapsLock