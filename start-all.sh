#!/bin/bash

# Navigate to backend and start server
echo "Starting backend..."
cd backend
npm install
node index.js &
BACKEND_PID=$!

# Navigate to frontend and start dev server
echo "Starting frontend..."
cd ../frontend
npm install
npm run dev &
FRONTEND_PID=$!

# Wait for both to finish
wait $BACKEND_PID $FRONTEND_PID
