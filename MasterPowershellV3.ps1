Function Generate-Form {

    Add-Type -AssemblyName System.Windows.Forms ; Add-Type -AssemblyName System.Drawing
    
    # Build Form
    $Form = New-Object System.Windows.Forms.Form;$Form.Text = "GUI of Guru";$Form.Size = New-Object System.Drawing.Size(500,500);$Form.StartPosition = "CenterScreen";$Form.Topmost = $True
     
    # Add Text
    $objLabel = New-Object System.Windows.Forms.Label;$objLabel.Location = New-Object System.Drawing.Size(10,15);$objLabel.Size = New-Object System.Drawing.Size(80,20);$objLabel.Text = "Normal Things";$Form.Controls.Add($objLabel)

    # Add Buttons
    $Button00 = New-Object System.Windows.Forms.Button;$Button00.Location = New-Object System.Drawing.Size(10,40) ;$Button00.Size = New-Object System.Drawing.Size(60,25);$Button00.Text = "Uptime";$Form.Controls.Add($Button00)
    $Button01 = New-Object System.Windows.Forms.Button;$Button01.Location = New-Object System.Drawing.Size(75,40) ;$Button01.Size = New-Object System.Drawing.Size(60,25);$Button01.Text = "OS";$Form.Controls.Add($Button01)
    $Button02 = New-Object System.Windows.Forms.Button;$Button02.Location = New-Object System.Drawing.Size(140,40);$Button02.Size = New-Object System.Drawing.Size(65,25);$Button02.Text = "Temp";$Form.Controls.Add($Button02)
    $Button03 = New-Object System.Windows.Forms.Button;$Button03.Location = New-Object System.Drawing.Size(205,40);$Button03.Size = New-Object System.Drawing.Size(60,25);$Button03.Text = "Temp";$Form.Controls.Add($Button03)
    $Button04 = New-Object System.Windows.Forms.Button;$Button04.Location = New-Object System.Drawing.Size(270,40);$Button04.Size = New-Object System.Drawing.Size(60,25);$Button04.Text = "Temp";$Form.Controls.Add($Button04)
    $Button05 = New-Object System.Windows.Forms.Button;$Button05.Location = New-Object System.Drawing.Size(335,40);$Button05.Size = New-Object System.Drawing.Size(60,25);$Button05.Text = "Temp";$Form.Controls.Add($Button05)
    
    $Button06 = New-Object System.Windows.Forms.Button;$Button06.Location = New-Object System.Drawing.Size(10,80) ;$Button06.Size = New-Object System.Drawing.Size(60,25);$Button06.Text = "Temp";$Form.Controls.Add($Button06)
    $Button07 = New-Object System.Windows.Forms.Button;$Button07.Location = New-Object System.Drawing.Size(75,80) ;$Button07.Size = New-Object System.Drawing.Size(60,25);$Button07.Text = "Temp";$Form.Controls.Add($Button07)
    $Button08 = New-Object System.Windows.Forms.Button;$Button08.Location = New-Object System.Drawing.Size(140,80);$Button08.Size = New-Object System.Drawing.Size(60,25);$Button08.Text = "Temp";$Form.Controls.Add($Button08)
    $Button09 = New-Object System.Windows.Forms.Button;$Button09.Location = New-Object System.Drawing.Size(205,80);$Button09.Size = New-Object System.Drawing.Size(60,25);$Button09.Text = "Temp";$Form.Controls.Add($Button09)
    $Button10 = New-Object System.Windows.Forms.Button;$Button10.Location = New-Object System.Drawing.Size(270,80);$Button10.Size = New-Object System.Drawing.Size(60,25);$Button10.Text = "Temp";$Form.Controls.Add($Button10)
    $Button11 = New-Object System.Windows.Forms.Button;$Button11.Location = New-Object System.Drawing.Size(335,80);$Button11.Size = New-Object System.Drawing.Size(60,25);$Button11.Text = "Temp";$Form.Controls.Add($Button11)
    
    $Button12 = New-Object System.Windows.Forms.Button;$Button12.Location = New-Object System.Drawing.Size(10,120) ;$Button12.Size = New-Object System.Drawing.Size(60,25);$Button12.Text = "Temp";$Form.Controls.Add($Button12)
    $Button13 = New-Object System.Windows.Forms.Button;$Button13.Location = New-Object System.Drawing.Size(75,120) ;$Button13.Size = New-Object System.Drawing.Size(60,25);$Button13.Text = "Temp";$Form.Controls.Add($Button13)
    $Button14 = New-Object System.Windows.Forms.Button;$Button14.Location = New-Object System.Drawing.Size(140,120);$Button14.Size = New-Object System.Drawing.Size(60,25);$Button14.Text = "Temp";$Form.Controls.Add($Button14)
    $Button15 = New-Object System.Windows.Forms.Button;$Button15.Location = New-Object System.Drawing.Size(205,120);$Button15.Size = New-Object System.Drawing.Size(60,25);$Button15.Text = "Temp";$Form.Controls.Add($Button15)
    $Button16 = New-Object System.Windows.Forms.Button;$Button16.Location = New-Object System.Drawing.Size(270,120);$Button16.Size = New-Object System.Drawing.Size(60,25);$Button16.Text = "Temp";$Form.Controls.Add($Button16)
    $Button17 = New-Object System.Windows.Forms.Button;$Button17.Location = New-Object System.Drawing.Size(335,120);$Button17.Size = New-Object System.Drawing.Size(60,25);$Button17.Text = "Temp";$Form.Controls.Add($Button17)

    # Exit Button
    $Exit = New-Object System.Windows.Forms.Button;$Exit.Location = New-Object System.Drawing.Size(420,420);$Exit.Size = New-Object System.Drawing.Size(60,25);$Exit.Text = "Exit"; $Form.Controls.Add($Exit)

    #Add Button event 
    $Button00.Add_Click({Uptime_Click}) ; $Button01.Add_Click({CheckOS_Click}) ; $Button02.Add_Click({Temp_Output})   ; $Button03.Add_Click({Temp_Output}) ; $Button04.Add_Click({Temp_Output}) ; $Button05.Add_Click({Temp_Output})
    $Button06.Add_Click({Temp_Output})  ; $Button07.Add_Click({Temp_Output})   ; $Button08.Add_Click({Temp_Output})   ; $Button09.Add_Click({Temp_Output}) ; $Button10.Add_Click({Temp_Output}) ; $Button11.Add_Click({Temp_Output})
    $Button12.Add_Click({Temp_Output})  ; $Button13.Add_Click({Temp_Output})   ; $Button14.Add_Click({Temp_Output})   ; $Button15.Add_Click({Temp_Output}) ; $Button16.Add_Click({Temp_Output}) ; $Button17.Add_Click({Temp_Output})

    $Exit.Add_Click({$Form.Close()})

    #Show the Form 
    $form.ShowDialog()| Out-Null 
}
 
Function Uptime_Click()
{
    $os = Get-WmiObject win32_operatingsystem
    $uptime = (Get-Date) - ($os.ConvertToDateTime($os.lastbootuptime))
    $Display = "Uptime: " + $Uptime.Days + " days, " + $Uptime.Hours + " hours, " + $Uptime.Minutes + " minutes" 
    [System.Windows.Forms.MessageBox]::Show("$Display" , "Uptime")
}
Function CheckOS_Click()
{
    $os = Get-WmiObject win32_operatingsystem -ComputerName localhost
    $bios = Get-WmiObject win32_bios -ComputerName localhost
    $cs = Get-WmiObject win32_computersystem -ComputerName localhost
    $props = @{'Comp.Name'=$env:COMPUTERNAME;'OSVersion'=$os.version;'SPVersion'=$os.servicepackmajorversion;'Serialnumber'=$bios.serialnumber;'Model'=$cs.model;'Manufacturer'=$cs.manufacturer}
    $obj = New-Object -TypeName PSObject -Property $props | Out-String ; $obj.Split("{;}")
    [System.Windows.Forms.MessageBox]::Show("$obj", "OS Info")
}
Function Temp_Output()
{
    Write-Host "Hello Dude!"
}

#Call the Function 
Generate-Form