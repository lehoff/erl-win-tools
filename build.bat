setlocal

call setpath

call mix deps.get
call mix
call relx -o rel

endlocal
pause
