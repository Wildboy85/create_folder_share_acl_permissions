# server script
# make new shares
# set permissions

$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
$scriptname = split-path -leaf $MyInvocation.MyCommand.Definition
$Logfilename = $scriptname + "_log.txt"
$filnam01 = $scriptPath + "\" + $Logfilename
$logall = 1
if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " START" | Out-File $filnam01}
if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " " + $scriptname | Out-File $filnam01 -append}

# drive letter on the server
$drive01 = "d:\"
$root01 = "DevicomTest\Secteurs\"

# folder and share names
$everyone = "everyone"
$administrators = "administrators"
$useradmin = "sfadmin"

#############################

$folder01 = "Achats Priv"        ###
#$group01 = "achats_priv"
$group01 = ""
[string[]]$arrfoldername = $folder01
[string[]]$arrsharename = $folder01
# none, read, change, full
[array]$arr_share_none = (,(""))
[array]$arr_share_read = (,($everyone))
[array]$arr_share_change = (,($everyone, $group01))
[array]$arr_share_full = (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
[array]$arr_acl_none = (,(""))
[array]$arr_acl_read = (,(""))
[array]$arr_acl_readandexecute = (,($everyone))
[array]$arr_acl_modify = (,($everyone, $group01))
[array]$arr_acl_fullcontrol = (,($useradmin, $administrators))

$folder01 = "Administration Priv" ###
#$group01 = "administration_priv"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "Direction Priv" ###
#$group01 = "direction_priv"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))


$folder01 = "Marketing Priv" ###
#$group01 = "marketing_priv"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "QA Assurance qualité Priv" ###
#$group01 = "QA_Assurance_qualite_Priv"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "RH Ressources Humaines Priv" ###
#$group01 = "RH_Ressources_Humaines_Priv"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "TIC Tech. Info. Comm. Priv" ###
#$group01 = "TIC_Tech_Info_Comm_Priv"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

######################## secteurs public


$folder01 = "Achats Pub"        ###
#$group01 = "achats_pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "Administration pub" ###
#$group01 = "administration_pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "Direction Pub" ###
#$group01 = "direction_pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))


$folder01 = "Marketing Pub" ###
#$group01 = "marketing_pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "QA Assurance qualité Pub" ###
#$group01 = "QA_Assurance_qualite_Pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "RH Ressources Humaines Pub" ###
#$group01 = "RH_Ressources_Humaines_Pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))

$folder01 = "TIC Tech. Info. Comm. Pub" ###
#$group01 = "TIC_Tech_Info_Comm_Pub"
$group01 = ""
$arrfoldername += $folder01
$arrsharename += $folder01
# none, read, change, full
$arr_share_none += (,(""))
$arr_share_read += (,($everyone))
$arr_share_change += (,($everyone, $group01))
$arr_share_full += (,($useradmin, $administrators))
# Synchronize, Read, ReadAndExecute, Write, modify, FullControl
$arr_acl_none += (,(""))
$arr_acl_read += (,(""))
$arr_acl_readandexecute += (,($everyone))
$arr_acl_modify += (,($everyone, $group01))
$arr_acl_fullcontrol += (,($useradmin, $administrators))



$i = 0
foreach ($folder01 in $arrfoldername)
    {

    ###################################
    # folder creation
    ###################################
    $fullfolderpath01 = $drive01 + $root01 + $folder01
    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Before folder creation: " + $fullfolderpath01 | Out-File $filnam01 -append}
    IF (!(TEST-PATH $fullfolderpath01)) 
        { 
        New-Item $fullfolderpath01 -type directory
        }
    else
        {
        if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " WARNING folder already exist" | Out-File $filnam01 -append}
        }
    ###################################
    # share creation
    ###################################
    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Before share creation: " + $fullfolderpath01 + "   Path and/or share name:" + $folder01 | Out-File $filnam01 -append}

    IF (TEST-PATH $fullfolderpath01)
        {

        if (!(get-wmiObject Win32_Share -filter “name='$folder01'”)) 
            { 
            
            New-SMBShare –Name $folder01 –Path $fullfolderpath01 –ContinuouslyAvailable $true #–FullAccess "devicom\administrators" -ChangeAccess "devicom\domain users" -ReadAccess "devicom\authenticated users"

            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Share created" | Out-File $filnam01 -append}


            }
        else
            {
            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " ERROR share creation: share already exist" | Out-File $filnam01 -append}

            # share apply permissions
            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Share permissions" | Out-File $filnam01 -append}

            foreach ($group01 in $arr_share_none[$i]) 
                {
                if ($group01.length -gt 0)
                    {
                    Grant-SmbShareAccess –Name $folder01 -Force -AccountName $group01 -AccessRight none
                    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Share permission NONE: " + $group01 | Out-File $filnam01 -append}
                    }
                }
            foreach ($group01 in $arr_share_read[$i])
                {
                if ($group01.length -gt 0)
                    {
                    Grant-SmbShareAccess –Name $folder01 -Force -AccountName $group01 -AccessRight read
                    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Share permission READ: " + $group01 | Out-File $filnam01 -append}
                    }
                }
            foreach ($group01 in $arr_share_change[$i])
                {
                if ($group01.length -gt 0)
                    {
                    Grant-SmbShareAccess –Name $folder01 -Force -AccountName $group01 -AccessRight change
                    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Share permission CHANGE: " + $group01 | Out-File $filnam01 -append}
                    }
                }
            foreach ($group01 in $arr_share_full[$i])
                {
                if ($group01.length -gt 0)
                    {
                    Grant-SmbShareAccess –Name $folder01 -Force -AccountName $group01 -AccessRight full
                    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Share permission FULL: " + $group01 | Out-File $filnam01 -append}
                    }
                }

            }
        }
    else
        {
        if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " ERROR share creation: folder does not exist" | Out-File $filnam01 -append}
        }

    ###################################
    # ACL permissions
    ###################################
    if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Before ACL permission setting: " + $fullfolderpath01 | Out-File $filnam01 -append}

    #$rule = New-Object System.Security.AccessControl.FileSystemAccessRule('everyone','ReadAndExecute','ContainerInherit, ObjectInherit', 'None', 'Allow')
    #$ACL.RemoveAccessRule($rule) 
    
    foreach ($group01 in $arr_acl_none[$i])
        {
        if ($group01.length -gt 0)
            {
            # Synchronize, Write, Read, ReadAndExecute, modify, write, FullControl
            $Acl = Get-Acl $fullfolderpath01
            $Acl.SetAccessRuleProtection($True, $False)
            $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($group01,'none','ContainerInherit, ObjectInherit', 'None', 'Allow')
            $Acl.AddAccessRule($rule)
            Set-ACL $fullfolderpath01 $ACL 

            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Acl permission NONE: " + $group01 | Out-File $filnam01 -append}
            }
        }
    foreach ($group01 in $arr_acl_read[$i])
        {
        if ($group01.length -gt 0)
            {
            # Synchronize, Write, Read, ReadAndExecute, modify, write, FullControl
            $Acl = Get-Acl $fullfolderpath01
            $Acl.SetAccessRuleProtection($True, $False)
            $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($group01,'read','ContainerInherit, ObjectInherit', 'None', 'Allow')
            $Acl.AddAccessRule($rule)
            Set-ACL $fullfolderpath01 $ACL 

            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Acl permission READ: " + $group01 | Out-File $filnam01 -append}
            }
        }
    foreach ($group01 in $arr_acl_readandexecute[$i])
        {
        if ($group01.length -gt 0)
            {
            # Synchronize, Write, Read, ReadAndExecute, modify, write, FullControl
            $Acl = Get-Acl $fullfolderpath01
            $Acl.SetAccessRuleProtection($True, $False)
            $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($group01,'readandexecute','ContainerInherit, ObjectInherit', 'None', 'Allow')
            $Acl.AddAccessRule($rule)
            Set-ACL $fullfolderpath01 $ACL 

            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Acl permission READANDEXECUTE: " + $group01 | Out-File $filnam01 -append}
            }
        }
    foreach ($group01 in $arr_acl_modify[$i])
        {
        if ($group01.length -gt 0)
            {
            # Synchronize, Write, Read, ReadAndExecute, modify, write, FullControl
            $Acl = Get-Acl $fullfolderpath01
            $Acl.SetAccessRuleProtection($True, $False)
            $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($group01,'modify','ContainerInherit, ObjectInherit', 'None', 'Allow')
            $Acl.AddAccessRule($rule)
            Set-ACL $fullfolderpath01 $ACL 

            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Acl permission MODIFY: " + $group01 | Out-File $filnam01 -append}
            }
        }
    foreach ($group01 in $arr_acl_fullcontrol[$i])
        {
        if ($group01.length -gt 0)
            {
            # Synchronize, Write, Read, ReadAndExecute, modify, write, FullControl
            $Acl = Get-Acl $fullfolderpath01
            $Acl.SetAccessRuleProtection($True, $False)
            $rule = New-Object System.Security.AccessControl.FileSystemAccessRule($group01,'fullcontrol','ContainerInherit, ObjectInherit', 'None', 'Allow')
            $Acl.AddAccessRule($rule)
            Set-ACL $fullfolderpath01 $ACL 

            if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " Acl permission FULLCONTROL: " + $group01 | Out-File $filnam01 -append}
            }
        }

    $i++

    }
if ($logall=1) {(Get-Date -Format "yyyy-MM-dd HH:mm:ss") + " END" | Out-File $filnam01 -append}

