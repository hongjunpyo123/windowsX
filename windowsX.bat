@echo off
setlocal enabledelayedexpansion


>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if %errorlevel% == 0 (
    echo Script is running with administrative privileges
) else (
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\admin.vbs"
    echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\admin.vbs"
    "%temp%\admin.vbs"
    del "%temp%\admin.vbs"
    exit /B
)



:: Get Windows Edition from the registry
for /f "tokens=3 delims= " %%a in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v EditionID') do set Edition=%%a

:: Map EditionID to human-readable format
if "!Edition!"=="Core" set Edition=Home
if "!Edition!"=="Professional" set Edition=Pro


:: Get Windows Version
for /f "tokens=3 delims= " %%v in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentVersion') do set Version=%%v


:: Get Windows Build Number
for /f "tokens=3 delims= " %%b in ('reg query "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion" /v CurrentBuild') do set Build=%%b

:: Determine Windows Version
set "WindowsVersion="
if "!Version!"=="10.0" (
    if !Build! GEQ 22000 (
        set WindowsVersion=11
    ) else (
        set WindowsVersion=10
    )
) else if "!Version!"=="6.1" (
    set WindowsVersion=7
) else if "!Version!"=="6.2" (
    set WindowsVersion=8
) else if "!Version!"=="6.3" (
    set WindowsVersion=8
) else (
    set WindowsVersion=null
)


:main
set input=5
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��       [ ���� ��ġ�� ���� : Windows 8 Home ]
echo ��
echo ��     1. �ڵ�����
echo ��
echo ��     2. ��������
echo ��
echo ��     3. ������ ���� ���� ����
echo ��
echo ��     4. ������ ���̼��� ���� ����
echo ��
echo �Ʀ�������������������������������������������������������������                                                                                                       
set/p input=�Է�:

if %input%==1 goto a
if %input%==2 goto b
if %input%==3 goto c
if %input%==4 (
	start slmgr /dlv
)

goto main

:a
set input=5
cls
echo --------------------------------
echo [ ������ !WindowsVersion! !Edition! ���� ������ �����մϴ�.]
echo --------------------------------
pause

if "!WindowsVersion!"=="10" (
    if "!Edition!"=="Home" (
        start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
        	
		cls
		echo --------------------------------
		echo [ 1/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3�ܰ� ����Ϸ�..]
		pause
		
		cls
		echo --------------------------------
		echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else if "!Edition!"=="Pro" (
        start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
        	
		cls
		echo --------------------------------
		echo [ 1/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3�ܰ� ����Ϸ�..]
		pause
		
		cls
		echo --------------------------------
		echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else (
		cls
		echo --------------------------------
		echo [ �������� �ʴ� �����Դϴ�. ]
		echo --------------------------------
		pause
		goto main
	)
) else if "!WindowsVersion!"=="11" (
    if "!Edition!"=="Home" (
        start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
        	
		cls
		echo --------------------------------
		echo [ 1/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3�ܰ� ����Ϸ�..]
		pause
		
		cls
		echo --------------------------------
		echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else if "!Edition!"=="Pro" (
        start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
        	
		cls
		echo --------------------------------
		echo [ 1/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3�ܰ� ����Ϸ�..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3�ܰ� ����Ϸ�..]
		pause
		
		cls
		echo --------------------------------
		echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else (
		cls
		echo --------------------------------
		echo [ �������� �ʴ� �����Դϴ�. ]
		echo --------------------------------
		pause
		goto main
	)
) else (
	cls
	echo --------------------------------
    echo [ �������� �ʴ� �����Դϴ�. ]
	echo --------------------------------
    pause
    goto main
)

:b
set input=5
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��       [ ���� ��ġ�� ���� : Windows 8 Home ]
echo ��
echo ��     1. ������ 7
echo ��
echo ��     2. ������ 8
echo ��
echo ��     3. ������ 10
echo ��
echo ��     4. ������ 11
echo ��
echo �Ʀ�������������������������������������������������������������                                                                                                       
set/p input=�Է�:

if %input%==1 goto 7
if %input%==2 goto 8
if %input%==3 goto 10
if %input%==4 goto 11

goto b

:7
set input=5
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��       [ ���� ��ġ�� ���� : Windows 8 Home ]
echo ��
echo ��     1. ������ 7 home
echo ��
echo ��     2. ������ 7 pro
echo ��
echo ��     0. ���ư���
echo ��
echo �Ʀ�������������������������������������������������������������                                                                                                       
set/p input=�Է�:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ ������ 7 home ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ ������ 7 pro ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
)

if %input%==0 (
	goto main
)
goto 7

:8
set input=5
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��       [ ���� ��ġ�� ���� : Windows 8 Home ]
echo ��
echo ��     1. ������ 8 home
echo ��
echo ��     2. ������ 8 pro
echo ��
echo ��     0. ���ư���
echo ��
echo �Ʀ�������������������������������������������������������������                                                                                                       
set/p input=�Է�:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ ������ 8 home ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ ������ 8 pro ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
)

if %input%==0 (
	goto main
)
goto 8

:10
set input=5
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��       [ ���� ��ġ�� ���� : Windows 8 Home ]
echo ��
echo ��     1. ������ 10 home
echo ��
echo ��     2. ������ 10 pro
echo ��
echo ��     0. ���ư���
echo ��
echo �Ʀ�������������������������������������������������������������                                                                                                       
set/p input=�Է�:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ ������ 10 home ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
	
	cls
	echo --------------------------------
	echo [ 1/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3�ܰ� ����Ϸ�..]
	pause
	
	cls
	echo --------------------------------
	echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ ������ 10 pro ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    
	cls
	echo --------------------------------
	echo [ 1/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3�ܰ� ����Ϸ�..]
	pause
	
	cls
	echo --------------------------------
	echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==0 (
	goto main
)
goto 10

:11
set input=5
cls
echo �Ȧ�������������������������������������������������������������
echo ��
echo ��       [ ���� ��ġ�� ���� : Windows 8 Home ]
echo ��
echo ��     1. ������ 11 home
echo ��
echo ��     2. ������ 11 pro
echo ��
echo ��     0. ���ư���
echo ��
echo �Ʀ�������������������������������������������������������������                                                                                                       
set/p input=�Է�:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ ������ 11 home ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    
	cls
	echo --------------------------------
	echo [ 1/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3�ܰ� ����Ϸ�..]
	pause
	
	cls
	echo --------------------------------
	echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ ������ 11 pro ���� ������ �����մϴ�.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    
	cls
	echo --------------------------------
	echo [ 1/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3�ܰ� ����Ϸ�..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3�ܰ� ����Ϸ�..]
	pause
	
	cls
	echo --------------------------------
	echo [ ������ �Ϸ��Ͽ����ϴ�. ����� �մϴ�. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==0 (
	goto main
)
goto 11





:c
start "" winver
goto main













pause
