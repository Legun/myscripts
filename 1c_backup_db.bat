net stop "1C:Enterprise 8.3 Server Agent"
timeout /t 5
net start "1c:enterprise 8.3 Server Agent"
timeout /t 20

"C:\Path to 1c" DESIGNER /s "./dbname" /N "AdminName" /p "Passwd" DumpIB "c:\backup\test.dt"
