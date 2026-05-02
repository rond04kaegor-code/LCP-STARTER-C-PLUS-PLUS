@echo off
chcp 1251 >nul
title LCP STARTER C++ - FULL BUILD v1.0

echo ==========================================
echo    LCP STARTER C++ - FULL BUILD v1.0
echo    (c) LCP CORPORATION
echo ==========================================
echo.

set "PD=%~dp0"

echo Select platform for ALL:
echo   1 = x86 (32-bit)
echo   2 = x64 (64-bit)
echo.
set /p "PCH=Choice: "
if "%PCH%"=="" set "PCH=1"

echo.
for %%f in (*.lcplus) do (
    echo ========================================
    echo Building: %%f
    if "%PCH%"=="2" (
        call "%PD%LCP_STARTER_CPP.bat" "%%f" x64
    ) else (
        call "%PD%LCP_STARTER_CPP.bat" "%%f" x86
    )
    echo.
)

echo ==========================================
echo   BUILD COMPLETE
echo ==========================================
echo.
dir /b *.exe 2>nul
echo.
pause