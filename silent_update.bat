@echo off
:start
IF NOT EXIST "AT.xsl" (
  exit
)
IF NOT EXIST "wget.exe" (
  exit
)
IF NOT EXIST "unzip.exe" (
  exit
)
IF NOT EXIST "xml.exe" (
  exit
)

:checkconnection
wget.exe -q -O NUL --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:53.0) Gecko/20100101 Firefox/53.0" "https://data.fda.gov.tw/" > nul 2>&1
IF ERRORLEVEL 1 (
  exit
)

IF EXIST "AT.html" (
  del /F /Q AT.bak.html > nul 2>&1
  copy /Y AT.html AT.bak.html > nul 2>&1
)

:download
wget.exe --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:53.0) Gecko/20100101 Firefox/53.0" --output-document=68_1.xml.zip "https://data.fda.gov.tw/opendata/exportDataList.do?method=ExportData&InfoId=68&logType=1" > nul 2>&1

IF EXIST "68_1.xml.zip" (
  GOTO unzip
) ELSE (
  GOTO download
)

:unzip
IF %@FILESIZE["68_1.xml.zip"] == 0 (
  del /F /Q 68_1.xml.zip > nul 2>&1
  GOTO download
) ELSE (
  unzip.exe 68_1.xml.zip > nul 2>&1
)

:cont
xml.exe tr AT.xsl 68_1.xml > AT.html

IF EXIST "AT.html" (
  del /F /Q 68_1.xml > nul 2>&1
  del /F /Q 68_1.xml.zip > nul 2>&1
  GOTO end
) ELSE (
  GOTO cont
)

:end
del /F /Q *. > nul 2>&1
exit
