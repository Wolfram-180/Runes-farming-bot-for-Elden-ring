#include <Misc.au3>
#include <Date.au3>


Func WriteC($txt)
   ConsoleWrite (_NowTime() & ": " & $txt & @CRLF)
EndFunc


Func CountDown($txt, $time)
	While $time > 0
		WriteC($time / 1000 & " " & $txt & " : CountDown")
		Sleep(1000)
		$time = $time - 1000
	WEnd
EndFunc


Func Bang()
	Send("{SHIFTDOWN}")
	MouseClick($MOUSE_CLICK_RIGHT)
	Send("{SHIFTUP}")
	Sleep(300)
	For $x = 0 to 16
		Sleep(100)
		Send("{SHIFTDOWN}")
		MouseClick($MOUSE_CLICK_RIGHT)
		Send("{SHIFTUP}")
		next
EndFunc


Func KillAll()
For $i = 0 to 2
	Bang()
	Sleep(4000)
	next
EndFunc


Func Teleport()
	Send("{g down}")
	Sleep(100)
	Send("{g up}")
	Sleep(100)

	Send("{w down}")
	Sleep(100)
	Send("{w up}")
	Sleep(100)

	Send("{s down}")
	Sleep(100)
	Send("{s up}")
	Sleep(100)

	Send("{e down}")
	Sleep(300)
	Send("{e up}")
	Sleep(300)

	Send("{e down}")
	Sleep(300)
	Send("{e up}")
	Sleep(300)
EndFunc


Func RunForward()
	Send("{w down}")
	Sleep(3900)
	Send("{w up}")
	Sleep(250)

	Send("{a down}")
	Sleep(800)
	Send("{a up}")
	Sleep(50)

	Send("{w down}")
	Sleep(1300)
	Send("{w up}")
	Sleep(250)
EndFunc


Func RunBack()
	Send("{s down}")
	Sleep(2000)
	Send("{s up}")
	Sleep(250)

	Send("{d down}")
	Sleep(3000)
	Send("{d up}")
	Sleep(50)
EndFunc


$Do = 1
CountDown("wtn", 7000)


While $Do = 1
	Teleport()
	Sleep(8000)
	RunForward()
	KillAll()
	RunBack()
	;$Do = 0
WEnd