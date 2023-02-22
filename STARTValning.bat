@echo off
:start
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netlog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start DayZServer_x64.exe -config=serverDZ.cfg -port=2302 -profiles=Profilesfolder "-mod=@DayZ-Expansion-Chat;@DayZ-Expansion-Groups;@DayZ-Expansion-Book;@DayZ-Expansion;@DayZ-Expansion-Core;@Valning Map;@Dabs Framework;@VPPAdminTools;@CF" -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 7200
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start 