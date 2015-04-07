@echo off
setlocal

call setpath

set ROOT=%~dsp0%
if NOT EXIST %ROOT%relx (
    curl -L --insecure -o  %ROOT%relx https://github.com/erlware/relx/releases/download/v1.2.0/relx
)

escript.exe %ROOT%relx %*

endlocal
@echo on
