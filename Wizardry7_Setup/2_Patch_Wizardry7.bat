@echo off
setlocal
cd /d "%~dp0"

rem ルートから実行する場合
set "TARGET=Game\DSAVANTV\WIZARDRY.BAT"

rem WIZARDRY.BATと同じフォルダで実行した場合
if not exist "%TARGET%" set "TARGET=WIZARDRY.BAT"

if not exist "%TARGET%" (
  echo WIZARDRY.BAT が見つかりません。
  echo このBATをキットのルート、または WIZARDRY.BAT と同じフォルダで実行してください。
  pause
  exit /b 1
)

set "WIZBAT_TARGET=%TARGET%"

powershell -NoProfile -ExecutionPolicy Bypass -Command ^
  "$p=$env:WIZBAT_TARGET;" ^
  "$enc=[Text.Encoding]::GetEncoding(932);" ^
  "$s=[IO.File]::ReadAllText($p,$enc);" ^
  "$orig=$s;" ^
  "$nl=[Environment]::NewLine;" ^
  "$s=$s.Replace('exit`r`necho on','exit'+$nl+'echo on');" ^
  "$s=[regex]::Replace($s,'(?m)^vkeyjp\s*$','vkeyjp >NUL');" ^
  "$s=[regex]::Replace($s,'(?m)^vkeyjp r\s*$','vkeyjp r >NUL');" ^
  "if ($s -notmatch '(?m)^exit\s*$') { $s=[regex]::Replace($s,'(?m)^echo on\s*$','exit'+$nl+'echo on',1) }" ^
  "if ($s -eq $orig) { Write-Host 'すでにパッチされています。'; exit 0 }" ^
  "$bak=$p+'.bak';" ^
  "if (-not (Test-Path $bak)) { [IO.File]::WriteAllText($bak,$orig,$enc) }" ^
  "[IO.File]::WriteAllText($p,$s,$enc);" ^
  "Write-Host 'WIZARDRY.BAT を修正しました。';" ^
  "Write-Host ('バックアップ: '+$bak);"

pause
