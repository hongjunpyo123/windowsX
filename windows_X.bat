@echo off
setlocal enabledelayedexpansion

title Windows_X

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
) else if "!Version!"=="6.0" (
    set WindowsVersion=vista
) else (
    set WindowsVersion=null
)


:main
set input=10
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收式旬
echo 早
echo 早     1. 濠翕檣隸
echo 早
echo 早     2. 熱翕檣隸
echo 早
echo 早     3. 孺紫辦 幗瞪 薑爾 爾晦
echo 早
echo 早     4. 孺紫辦 塭檜撫蝶 薑爾 爾晦
echo 早
echo 早     5. 紫遺蜓
echo 早
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收旭                                                                                                       
set/p input=殮溘:

if %input%==1 goto a
if %input%==2 goto b
if %input%==3 goto c
if %input%==4 (
	start slmgr /dlv
)
if %input%==5 goto d

goto main

:a
set input=5
cls
echo --------------------------------
echo [ 孺紫辦 !WindowsVersion! !Edition! 戲煎 檣隸擊 霞чм棲棻.]
echo --------------------------------
pause

if "!WindowsVersion!"=="10" (
    if "!Edition!"=="Home" (
        start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else if "!Edition!"=="Pro" (
        start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else (
		cls
		echo --------------------------------
		echo [ 雖錳ж雖 彊朝 幗蟒殮棲棻. ]
		echo --------------------------------
		pause
		goto main
	)
) else if "!WindowsVersion!"=="11" (
    if "!Edition!"=="Home" (
        start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else if "!Edition!"=="Pro" (
        start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms.digiboy.ir
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else (
		cls
		echo --------------------------------
		echo [ 雖錳ж雖 彊朝 幗蟒殮棲棻. ]
		echo --------------------------------
		pause
		goto main
	)
) else if "!WindowsVersion!"=="7" (
    if "!Edition!"=="Home" (
        start slmgr /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms8.msguides.com
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
		
    ) else if "!Edition!"=="Pro" (
        start slmgr /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms8.msguides.com
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
	)		
) else (
	cls
	echo --------------------------------
    echo [ 雖錳ж雖 彊朝 幗蟒殮棲棻. ]
	echo --------------------------------
    pause
    goto main
)

:b
set input=10
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早
echo 早       [ ⑷營 撲纂脹 幗蟒 : Windows !WindowsVersion! !Edition! ]
echo 早
echo 早     1. 孺紫辦 7
echo 早
echo 早     2. 孺紫辦 8
echo 早
echo 早     3. 孺紫辦 10
echo 早
echo 早     4. 孺紫辦 11
echo 早
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收                                                                                                      
set/p input=殮溘:

if %input%==1 goto 7
if %input%==2 goto 8
if %input%==3 goto 10
if %input%==4 goto 11

goto b

:7
set input=5
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早
echo 早       [ ⑷營 撲纂脹 幗蟒 : Windows !WindowsVersion! !Edition! ]
echo 早
echo 早     1. 孺紫辦 7 home
echo 早
echo 早     2. 孺紫辦 7 pro
echo 早
echo 早     0. 給嬴陛晦
echo 早
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收                                                                                                           
set/p input=殮溘:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 7 home 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
	start slmgr /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms8.msguides.com
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 7 pro 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
	start slmgr /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
        	
		cls
		echo --------------------------------
		echo [ 1/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /skms kms8.msguides.com
		
		echo [ 2/3欽啗 瞳辨諫猿..]
		pause
		
		start slmgr /ato
		
		echo [ 3/3欽啗 瞳辨諫猿..]
		pause
		
		cls
		echo --------------------------------
		echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
		echo --------------------------------
		pause
		start shutdown -f -r -t 1
)

if %input%==0 (
	goto main
)
goto 7

:8
set input=10
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早
echo 早       [ ⑷營 撲纂脹 幗蟒 : Windows !WindowsVersion! !Edition! ]
echo 早
echo 早     1. 孺紫辦 8 home
echo 早
echo 早     2. 孺紫辦 8 pro
echo 早
echo 早     0. 給嬴陛晦
echo 早
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收                                                                                                       
set/p input=殮溘:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 8 home 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 8 pro 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
)

if %input%==0 (
	goto main
)
goto 8

:10
set input=10
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早
echo 早       [ ⑷營 撲纂脹 幗蟒 : Windows !WindowsVersion! !Edition! ]
echo 早
echo 早     1. 孺紫辦 10 home
echo 早
echo 早     2. 孺紫辦 10 pro
echo 早
echo 早     0. 給嬴陛晦
echo 早
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收                                                                                                         
set/p input=殮溘:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 10 home 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
	
	cls
	echo --------------------------------
	echo [ 1/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3欽啗 瞳辨諫猿..]
	pause
	
	cls
	echo --------------------------------
	echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 10 pro 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    
	cls
	echo --------------------------------
	echo [ 1/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3欽啗 瞳辨諫猿..]
	pause
	
	cls
	echo --------------------------------
	echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==0 (
	goto main
)
goto 10

:11
set input=10
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早
echo 早       [ ⑷營 撲纂脹 幗蟒 : Windows !WindowsVersion! !Edition! ]
echo 早
echo 早     1. 孺紫辦 11 home
echo 早
echo 早     2. 孺紫辦 11 pro
echo 早
echo 早     0. 給嬴陛晦
echo 早
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收                                                                                                      
set/p input=殮溘:

if %input%==1 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 11 home 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
    
	cls
	echo --------------------------------
	echo [ 1/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3欽啗 瞳辨諫猿..]
	pause
	
	cls
	echo --------------------------------
	echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
	echo --------------------------------
	pause
    start shutdown -f -r -t 1
)

if %input%==2 (
	cls
	echo --------------------------------
	echo [ 孺紫辦 11 pro 戲煎 檣隸擊 霞чм棲棻.]
	echo --------------------------------
	pause
	echo --------------------------------
	start taskkill /f /im explorer.exe
	start slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    
	cls
	echo --------------------------------
	echo [ 1/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /skms kms.digiboy.ir
	
	echo [ 2/3欽啗 瞳辨諫猿..]
	pause
	
    start slmgr /ato
	
	echo [ 3/3欽啗 瞳辨諫猿..]
	pause
	
	cls
	echo --------------------------------
	echo [ 瞳辨擊 諫猿ж艘蝗棲棻. 營衛濛 м棲棻. ]
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

:d
set input=10
cls
echo 旨收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早 0. 給嬴陛晦
echo 曳收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收       
echo 早 [濠翕檣隸]
echo 早
echo 早 *濠翕檣隸擎 ⑷營 闡У攪縑 撲纂脹 孺紫辦 幗瞪擊 碳楝諦 檣隸酈蒂 瞳辨ж朝 晦棟殮棲棻.     
echo 早  ⑷營 闡У攪曖 溯雖蝶お葬縑 盪濰脹 高擊 碳楝螃晦 陽僥縑 褒薯 撲纂脹 幗瞪婁
echo 早  橾纂ж雖 彊擊 熱 氈蝗棲棻. п渡 褫暮 餌辨 瞪 [3: 幗瞪 薑爾 爾晦] 詭景蒂 �挫恉狤�    
echo 早  撲纂脹 孺紫辦 幗瞪婁 橾纂ж朝雖 �挫恉牮簽� 夥奧棲棻.
echo 曳收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收
echo 早 [熱翕檣隸]
echo 早
echo 早 *熱翕檣隸擎 錳ж朝 孺紫辦 幗瞪擊 摹鷗ж罹 檣隸酈蒂 瞳辨й 熱 氈朝 晦棟殮棲棻.   
echo 曳收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收  
echo 早 [嶸曖餌о]
echo 早  
echo 早 *賅萇 幗瞪曖 孺紫辦 檣隸擎 識 3欽啗煎 檜瑞橫雖貊, 葆雖虞 3欽啗 瞳辨 衛 擒 3蟾除曖 
echo 早  瞳辨 衛除檜 в蹂м棲棻. 檣隸酈陛 瞳辨腎歷棻朝 で機璽檜 嗑賊 縛攪蒂 揚楝 闡У攪蒂
echo 早  營衛濛 ж罹 輿衛晦 夥奧棲棻
echo 曲收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收收                                                                                                      
set/p input=殮溘:
if %input%==0 (
	goto main
)

goto d









pause
