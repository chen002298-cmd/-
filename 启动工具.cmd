@echo off
chcp 65001 >nul
cd /d "%~dp0"
where node >nul 2>&1
if errorlevel 1 (
 echo 请先安装 Node.js 20 或以上版本，并将 node 加入 PATH。
 pause
 exit /b 1
)
where ffmpeg >nul 2>&1
if errorlevel 1 (
 echo 请先安装 FFmpeg 并将 ffmpeg 和 ffprobe 加入 PATH。
 pause
 exit /b 1
)
echo 请在浏览器打开 http://127.0.0.1:4317
node server.mjs
pause
