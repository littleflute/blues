rem r.bat  v0.0.4
echo off

if "%1"=="" (
  goto End
) else (
  if "%1"=="DSC_" (
    goto DSC_
  ) else (
    goto End
  )
)
:DSC_

setlocal ENABLEDELAYEDEXPANSION
call set /a x = 18

for /F "delims=" %%a in ('dir /b DSC*.jpg') do (
	ren %%a !x!.jpg
	call set /a x = !x! + 1 
	echo x = !x!  
)

:End
echo p1 = %1
echo ===r.bat=========================
