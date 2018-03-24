diskpart /s disk.initialize.dpart
d:
cd \
mkdir bak
cd bak
mkdir Teamcity
cd Teamcity
xcopy c:\backup\teamcity .\ /s /e
c:
cd \
rmdir teamcity
mklink /J Teamcity d:\bak\teamcity 
cd \Teamcity\bin

.\runall.bat start
