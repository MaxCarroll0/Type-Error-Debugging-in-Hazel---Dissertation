if not exist "_diff" (mkdir "_diff")
git latexdiff --latexmk -o "./_diff/diffwithlatestbackup.pdf" --latexopt -shell-escape --latexpand -keep-comments HEAD --
pause