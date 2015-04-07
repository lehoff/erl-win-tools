@echo off
setlocal

call setpath

set ROOT=%~dsp0%
if NOT EXIST %ROOT%mix (
    curl -L --insecure -o %ROOT%mix http://s3.hex.pm/builds/mix/mix
    escript.exe %ROOT%mix local.rebar
)

escript.exe %ROOT%mix %*

endlocal
@echo on
