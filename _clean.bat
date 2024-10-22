
latexmk -c -bibtex
for /d %%d in (*) do (
        if /i not "%%d" == ".git%" (
        echo "%cd%"
        cd "%cd%/%%d"
        latexmk -c -bibtex
        )
)
pause