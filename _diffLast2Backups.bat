
if not exist "_diff" (mkdir "_diff")
git latexdiff --latexmk -o "./_diff/diffLast2Backups.pdf" --latexopt -shell-escape --latexpand -keep-comments "HEAD^" "HEAD"
pause