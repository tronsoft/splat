@echo off
tools\nuget\nuget.exe update -self
tools\nuget\nuget.exe install xunit.runner.console -OutputDirectory tools -ExcludeVersion
tools\nuget\nuget.exe install Cake -OutputDirectory tools -Version 0.23.0 -ExcludeVersion

tools\Cake\Cake.exe build.cake --target=%1

exit /b %errorlevel%
