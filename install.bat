if %PROCESSOR_ARCHITECTURE%==x86 set arch=
if %PROCESSOR_ARCHITECTURE%==AMD64 set arch= (x86)
if %PROCESSOR_ARCHITECTURE%==IA64 set arch= (x86)

if not exist "C:\Program Files%arch%\GnuWin32\bin\wget.exe" wget-1.11.4-1-setup.exe

if not exist "C:\Python27\python.exe" "C:\Program Files%arch%\GnuWin32\bin\wget.exe" http://www.python.org/ftp/python/2.7.2/python-2.7.2.msi
if not exist "C:\Python27\Scripts\easy_install.exe" "C:\Program Files%arch%\GnuWin32\bin\wget.exe" http://pypi.python.org/packages/2.7/s/setuptools/setuptools-0.6c11.win32-py2.7.exe
if not exist "C:\Python27\Scripts\twistd.py" "C:\Program Files%arch%\GnuWin32\bin\wget.exe" http://buildbot.twistedmatrix.com/builds/twisted-packages/Twisted-11.0.0.winxp32-py2.7.exe
if not exist "C:\Python27\Lib\site-packages\zope.interface-3.6.4-py2.7-win32.egg\zope\__init__.py" "C:\Program Files%arch%\GnuWin32\bin\wget.exe" http://www.lfd.uci.edu/~gohlke/pythonlibs/5j4mw7bn/zope.interface-3.7.0.win32-py2.7.exe


if not exist "C:\Python27\python.exe" msiexec /i python-2.7.2.msi
del python-2.7.2.msi
setuptools-0.6c11.win32-py2.7.exe
del setuptools-0.6c11.win32-py2.7.exe
Twisted-11.0.0.winxp32-py2.7.exe
del Twisted-11.0.0.winxp32-py2.7.exe
zope.interface-3.7.0.win32-py2.7.exe
del zope.interface-3.7.0.win32-py2.7.exe

c:\Python27\Scripts\easy_install.exe ecdsa

del update.bat
"C:\Program Files%arch%\GnuWin32\bin\wget.exe" https://raw.github.com/jackjack-jj/pywallet-win-files/master/update.bat --no-check-certificate
update.bat

