:: encoding="Cp850"
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: PROGRAM ®split-path¯
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::    
:: USAGE:
::    split-path
::
:: DEPENDENCIES: NONE
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@ECHO OFF
SETLOCAL EnableDelayedExpansion
:::::::::::::::::::::::::::::::::: PREPROCESS ::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::: PROCESS :::::::::::::::::::::::::::::::::::
:: Replaces spaces with "URL encoded" spaces.
SET aux=%PATH: =?20%
:: Replaces semicolons with spaces.
SET aux=%aux:;= %

:: Replaces parentheses with "URL encoded" parentheses.
SET aux=%aux:(=?28%
SET aux=%aux:)=?29%

CALL :iterate %aux%

GOTO :exit
:::::::::::::::::::::::::::::::::: POSTPROCESS :::::::::::::::::::::::::::::::::
:exit
EXIT /B 0 & ENDLOCAL

:::::::::::::::::::::::::::::::::: SUBROUTINES :::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: BEGINNING: SUBROUTINE ®iterate¯
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::    Prints a space separated list of elements, one on each line.
:: 
:: USAGE: 
::    CALL :iterate ®the Path¯
:: WHERE...
::    ®the Path¯: Space separated list of paths in the PATH variable.
::
:: DEPENDENCIES: NONE
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:iterate
SET aux=%*
SET element=%1
:: Replaces "URL encoded" characters with their originals.
SET displayElement=%element:?20= %
SET displayElement=%displayElement:?28=(%
SET displayElement=%displayElement:?29=)%

ECHO %displayElement%

:: Removes the element from the list.
CALL SET aux=%%aux:%element% =%%

:: Last element won't be removed, since it won't have a trailing space.
IF "%aux%" NEQ "%element%" (
    CALL :iterate %aux%
)

EXIT /B 0
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: END: SUBROUTINE ®iterate¯
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
