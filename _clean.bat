@echo off
setlocal

REM Loop through all subdirectories
for /r %%d in (.) do (
        echo Running command in: %%d
        cd /d %%d
        latexmk -c
)

endlocal
pause