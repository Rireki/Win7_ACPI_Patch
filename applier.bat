@ECHO OFF >nul
title ACPI Windows 7 ACPI Replacer Script >NUL
ECHO ===========ACPI Windows 7 Replacer Script===========
ECHO Place Windows 7's install.wim and acpi.sys from the github repository to D:\ ..
ECHO Press any key to continue, if the requirement is not fulfilled then please close this cmd window.
pause >nul
d:
mkdir mount
dism /mount-wim /wimfile:d:\install.wim /index:1 /mountdir:d:\mount
cd mount
cd windows
cd system32
cd drivers
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
cd ..
cd driverstore
cd filerepository
cd acpi.inf_amd64_neutral_349ad24468684f76
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
cd ..
cd acpi.inf_amd64_neutral_476d4b744f1f6916
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
cd ..
cd acpi.inf_amd64_neutral_aed2e7a487803437
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd ..
cd mount
cd windows
cd winsxs
cd amd64_acpi.inf_31bf3856ad364e35_6.1.7601.17514_none_80aec972e4a75989
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
cd .. 
cd amd64_acpi.inf_31bf3856ad364e35_6.1.7601.24056_none_810ed765fde3f9be
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
cd ..
cd amd64_acpi.inf_31bf3856ad364e35_6.1.7601.23403_none_81420483fdbdfcff
takeown /f acpi.sys
icacls acpi.sys /grant *S-1-5-32-544:F
copy /y d:\acpi.sys D:\mount\Windows\System32\DriverStore\FileRepository\acpi.inf_amd64_neutral_349ad24468684f76\
copy /y d:\acpi.sys D:\mount\Windows\System32\DriverStore\FileRepository\acpi.inf_amd64_neutral_476d4b744f1f6916\
copy /y d:\acpi.sys D:\mount\Windows\System32\DriverStore\FileRepository\acpi.inf_amd64_neutral_aed2e7a487803437\
copy /y d:\acpi.sys D:\mount\Windows\winsxs\amd64_acpi.inf_31bf3856ad364e35_6.1.7601.17514_none_80aec972e4a75989\
copy /y d:\acpi.sys D:\mount\Windows\winsxs\amd64_acpi.inf_31bf3856ad364e35_6.1.7601.24056_none_810ed765fde3f9be\
copy /y d:\acpi.sys D:\mount\Windows\winsxs\amd64_acpi.inf_31bf3856ad364e35_6.1.7601.23403_none_81420483fdbdfcff\
copy /y d:\acpi.sys D:\mount\windows\system32\drivers
echo ========================================
ECHO Press any key to continue, please execute applier2.bat ...
pause >nul
taskkill /f /im cmd.exe
