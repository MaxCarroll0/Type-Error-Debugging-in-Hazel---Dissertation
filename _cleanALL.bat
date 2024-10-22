@echo off
latexmk -C -bibtex
for /d %%d in (*) do (
        if /i not "%%d" == ".git%" (
        cd "%cd%/%%d"
        latexmk -C -bibtex
        )
)
pause