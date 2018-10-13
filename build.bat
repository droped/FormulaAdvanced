@ECHO OFF
ECHO Building FormulaAdvanced

ECHO Building the database
CD 0-Database
CALL build.bat
MOVE *.big.lua ..

REM ECHO Building Analysis
REM CD..
REM CD 1-Analysis Part
REM CALL build.bat
REM MOVE *.big.lua ..

ECHO Building the core
CD..
CD 2-FormulaPro
CALL build.bat
MOVE *.big.lua ..

ECHO Building References
CD..
CD 3-References
CALL build.bat
MOVE *.big.lua ..

ECHO Building the libraries
CD..
CD 4-Global Libraries
CALL build.bat
MOVE *.big.lua ..

CD..
ECHO Creating the whole thing...
REM COPY /v Database.big.lua+lib.big.lua+FormulaPro.big.lua+Analysis.big.lua+Reference.big.lua+main.lua FormulaPro_fullcode.lua /y /b
COPY /v Database.big.lua+lib.big.lua+FormulaPro.big.lua+Reference.big.lua+main.lua FormulaPro_fullcode.lua /y /b
luna.exe FormulaPro_fullcode.lua FormulaPro.tns

ECHO Done building

ECHO Cleaning up
ERASE *.big.lua

ECHO Done. Enjoy!
