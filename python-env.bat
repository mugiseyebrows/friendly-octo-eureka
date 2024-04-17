
if exist "%LOCALAPPDATA%\Programs\Python\Python312\python.exe" (
set PATH=%LOCALAPPDATA%\Programs\Python\Python312;%LOCALAPPDATA%\Programs\Python\Python312\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python312
)


if exist C:\Python312\python.exe (
set PATH=C:\Python312;C:\Python312\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python312
)


if exist "%LOCALAPPDATA%\Programs\Python\Python311\python.exe" (
set PATH=%LOCALAPPDATA%\Programs\Python\Python311;%LOCALAPPDATA%\Programs\Python\Python311\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python311
)


if exist C:\Python311\python.exe (
set PATH=C:\Python311;C:\Python311\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python311
)


if exist "%LOCALAPPDATA%\Programs\Python\Python310\python.exe" (
set PATH=%LOCALAPPDATA%\Programs\Python\Python310;%LOCALAPPDATA%\Programs\Python\Python310\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python310
)


if exist C:\Python310\python.exe (
set PATH=C:\Python310;C:\Python310\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python310
)


if exist "%LOCALAPPDATA%\Programs\Python\Python39\python.exe" (
set PATH=%LOCALAPPDATA%\Programs\Python\Python39;%LOCALAPPDATA%\Programs\Python\Python39\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python39
)


if exist C:\Python39\python.exe (
set PATH=C:\Python39;C:\Python39\Scripts;C:\windows;C:\windows\system32;%PATH%
goto python39
)


if exist C:\Miniconda3\python.exe (
set PATH=C:\Miniconda3;C:\Miniconda3\Library\bin;C:\Miniconda3\Scripts;C:\Miniconda3\condabin;C:\windows;C:\windows\system32;%PATH%
goto conda
)


if exist "%USERPROFILE%\Miniconda3\python.exe" (
set PATH=%USERPROFILE%\Miniconda3;%USERPROFILE%\Miniconda3\Library\bin;%USERPROFILE%\Miniconda3\Scripts;%USERPROFILE%\Miniconda3\condabin;C:\windows;C:\windows\system32;%PATH%
goto conda
)


if exist C:\Anaconda3\python.exe (
set PATH=C:\Anaconda3;C:\Anaconda3\Library\bin;C:\Anaconda3\Scripts;C:\Anaconda3\condabin;C:\windows;C:\windows\system32;%PATH%
goto conda
)


if exist "%USERPROFILE%\Anaconda3\python.exe" (
set PATH=%USERPROFILE%\Anaconda3;%USERPROFILE%\Anaconda3\Library\bin;%USERPROFILE%\Anaconda3\Scripts;%USERPROFILE%\Anaconda3\condabin;C:\windows;C:\windows\system32;%PATH%
goto conda
)

:python312

:python311

:python310

:python39

:conda
    
where python
