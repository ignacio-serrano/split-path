:: encoding="Cp850"
:: No need for ECHO OFF
SETLOCAL EnableDelayedExpansion

SET testName=parentheses-path
SET path=C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0\;C:\Program Files (x86)\Microsoft Application Virtualization Client;C:\WINDOWS\System32\OpenSSH\
>"%rootDir%\target\test\%testName%.output.txt" CALL "%rootDir%\src\main\split-path.bat"

>"%rootDir%\target\test\%testName%.comparison.txt" FC "%rootDir%\src\test\%testName%.exp.output.txt" "%rootDir%\target\test\%testName%.output.txt"
SET errLvl=%ERRORLEVEL%
IF %errLvl% GTR 0 (
    TYPE "%rootDir%\target\test\%testName%.comparison.txt"
)

EXIT /B %errLvl% & ENDLOCAL
