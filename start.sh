#!/bin/bash

echo "========================================"
echo "   USDT Wallet - Full Stack Application"
echo "========================================"
echo

echo "Starting Backend Server..."
cd backend && npm run dev &
BACKEND_PID=$!

sleep 3

echo "Starting Frontend Server..."
cd ../frontend && npm run dev &
FRONTEND_PID=$!

echo
echo "========================================"
echo "Both servers are starting..."
echo
echo "Backend:  http://localhost:4000"
echo "Frontend: http://localhost:5173"
echo "Admin:    http://localhost:5173/admin"
echo
echo "Default Admin Credentials:"
echo "Phone:    9999999999"
echo "Password: admin123"
echo
echo "Press Ctrl+C to stop both servers"

# Function to cleanup processes on exit
cleanup() {
    echo
    echo "Stopping servers..."
    kill $BACKEND_PID 2>/dev/null
    kill $FRONTEND_PID 2>/dev/null
    exit
}

# Trap Ctrl+C
trap cleanup SIGINT

# Wait for processes
wait