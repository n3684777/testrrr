









@echo off
echo ===================================================
echo =         是否把全部的(*.lub) 轉 (*.lua)          =
echo ===================================================
pause
for %%f in (*.lub) DO (
	@echo on
	FOR /F "tokens=1-2 delims=." %%a IN ("%%f") DO (
	luadec.exe %%f > %%a.lua
	@echo off
	)
)
pause






