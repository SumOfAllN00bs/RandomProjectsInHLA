set /p projectName=<projectname.txt
start explorer "C:\hla"
start explorer "C:\hla\projects\%projectName%\"
start cmd /K cd "C:\hla\projects\%projectName%\"