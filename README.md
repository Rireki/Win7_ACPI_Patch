# Win7_ACPI_Patch
A simple acpi integrator for Windows 7.

# Information
I wrote these batch scripts so I don't need to input commands manually using the CMD.

# About the acpi.sys file in this repository
It's a modified acpi.sys made by those folks in a particular forum to fix the 0x000000A5 'The Bios in This System is Not Fully ACPI Compliant' error people get while installing Windows 7 on a very modern system.

# What 'applier1.bat' does
It'll make a 'mount' folder on D: and mount the install.wim (which is must be placed in D: drive directory, and not in a folder) into that folder.
Then it'll takeover permissions of the acpi.sys files inside the install.wim, then replacing the original acpi.sys in the install.wim with the tweaked acpi.sys from this repository.

# What 'applier2.bat' does
It'll commit the changes made by the applier.bat batch file, and it'll clean the mountpoints used earlier.
