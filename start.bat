@echo off
echo ========================================
echo    USDT Wallet - Full Stack Application
echo ========================================
echo.

echo Starting Backend Server...
start "Backend Server" cmd /k "cd backend && npm run dev"

timeout /t 3 /nobreak >nul

echo Starting Frontend Server...
start "Frontend Server" cmd /k "cd frontend && npm run dev"

echo.
echo ========================================
echo Both servers are starting...
echo.
echo Backend:  http://localhost:4000
echo Frontend: http://localhost:5173
echo Admin:    http://localhost:5173/admin
echo.
echo Default Admin Credentials:
echo Phone:    9999999999
echo Password: admin123
echo.
echo Press any key to exit...
pause >nul