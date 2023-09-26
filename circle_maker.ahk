#InstallMouseHook

^g::
MouseGetPos, xpos, ypos
ypos := ypos
xpos := xpos + 0.5
MouseMove, xpos+300, ypos, 0
Click, xpos+300 ypos Left, Down
Loop, 10
{
	deltax := Cos(A_Index * 2 * 3.14159 / 100) * 300
	deltay := Sin(A_Index * 2 * 3.14159 / 100) * 300
 	MouseMove, xpos+deltax , ypos+deltay, 0,
}

Loop, 10
{
	deltax := Cos((40+A_Index) * 2 * 3.14159 / 100) * 300
	deltay := Sin((40+A_Index) * 2 * 3.14159 / 100) * 300
 	MouseMove, xpos+deltax , ypos+deltay, 0,
}
Click, xpos+300 ypos Left, Up

return

Up::
MouseMove, 0, 1, 0, R
return

Down::
MouseMove, 0, -1, 0, R
return

Left::
MouseMove, -1, 0, 0, R
return

Right::
MouseMove, 1, 0, 0, R
return