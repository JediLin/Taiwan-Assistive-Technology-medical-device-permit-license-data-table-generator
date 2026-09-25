@echo off
:start
cd "%~dp0"
echo Start at %date% %time% > silent_update_MD.log
echo Working from %~dp0 >> silent_update_MD.log

IF NOT EXIST "MD.xsl" (
  echo %time% No MD.xsl available >> silent_update_MD.log
  exit
)
IF NOT EXIST "wget.exe" (
  echo %time% No wget.exe available >> silent_update_MD.log
  exit
)
IF NOT EXIST "unzip.exe" (
  echo %time% No unzip.exe available >> silent_update_MD.log
  exit
)
IF NOT EXIST "xml.exe" (
  echo %time% no xml.exe available >> silent_update_MD.log
  exit
)

:checkconnection
wget.exe -O NUL "https://data.fda.gov.tw/" >> silent_update_MD.log 2>&1
IF ERRORLEVEL 1 (
  echo %time% No connection available >> silent_update_MD.log
  exit
)

IF EXIST "MD.html" (
  echo %time% Backup MD.html >> silent_update_MD.log
  del /F /Q MD.bak.html >> silent_update_MD.log 2>&1
  copy /Y MD.html MD.bak.html >> silent_update_MD.log 2>&1
)

:download
echo %time% Download XML >> silent_update_MD.log
wget.exe --output-document=68_1.xml.zip "https://data.fda.gov.tw/opendata/exportDataList.do?method=ExportData&InfoId=68&logType=1" >> silent_update_MD.log 2>&1

IF EXIST "68_1.xml.zip" (
  GOTO unzip
) ELSE (
  GOTO download
)

:unzip
IF %@FILESIZE["68_1.xml.zip"] == 0 (
  del /F /Q 68_1.xml.zip >> silent_update_MD.log 2>&1
  GOTO download
) ELSE (
  echo %time% Unzip file >> silent_update_MD.log
  unzip.exe 68_1.xml.zip >> silent_update_MD.log 2>&1
)

:cont
echo %time% Process XML >> silent_update_MD.log
xml.exe -q fo --recover 68_1.xml > 68_1_format.xml
xml.exe tr MD.xsl 68_1_format.xml > MD.html

IF EXIST "AT.html" (
  echo %time% Clean-up >> silent_update_MD.log
  del /F /Q 68_1_format.xml >> silent_update_MD.log 2>&1
  del /F /Q 68_1.xml >> silent_update_MD.log 2>&1
  del /F /Q 68_1.xml.zip >> silent_update_MD.log 2>&1
  GOTO end
) ELSE (
  GOTO cont
)

:end
del /F /Q *. >> silent_update_MD.log 2>&1
echo %time% Finished. >> silent_update_MD.log
exit
