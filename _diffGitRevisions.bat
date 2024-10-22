set /p "rev1=Enter OLD version Git revision: "
set /p "rev2=Enter NEW version Git revision: "
set /p "suffix=Enter file suffix: "
if not exist "_diff" (mkdir "_diff")
git latexdiff --latexmk -o "./_diff/diff%suffix%.pdf" --latexopt -shell-escape --latexpand -keep-comments %rev1% %rev2%
pause