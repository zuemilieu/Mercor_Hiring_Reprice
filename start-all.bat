@echo off
echo Starting backend...
cd backend
npm install
start cmd /k "node index.js"

echo Starting frontend...
cd ../frontend
npm install
start cmd /k "npm run dev"
