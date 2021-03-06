#Generated Form Function
function GenerateForm {
########################################################################
# Code Generated By: SAPIEN Technologies PrimalForms (Community Edition) v1.0.10.0
# Generated On: 27/01/2021 21:45
# Generated By: Swisscom
########################################################################

#region Import the Assemblies
[reflection.assembly]::loadwithpartialname("System.Windows.Forms") | Out-Null
[reflection.assembly]::loadwithpartialname("System.Drawing") | Out-Null
#endregion

#region Generated Form Objects
$form1 = New-Object System.Windows.Forms.Form
$txtAll = New-Object System.Windows.Forms.Label
$btnAll = New-Object System.Windows.Forms.Button
$txtMonitor = New-Object System.Windows.Forms.Label
$btnMonitor = New-Object System.Windows.Forms.Button
$txtTaskKiller = New-Object System.Windows.Forms.Label
$btnTaskKiller = New-Object System.Windows.Forms.Button
$InitialFormWindowState = New-Object System.Windows.Forms.FormWindowState
#endregion Generated Form Objects

#----------------------------------------------
#Generated Event Script Blocks
#----------------------------------------------
#Provide Custom Code for events specified in PrimalForms.
$handler_txtMonitor_Click= 
{
#TODO: Place custom script here

}

$handler_label3_Click= 
{
#TODO: Place custom script here

}

$handler_form1_Load= 
{
#TODO: Place custom script here

}

$btnAll_OnClick= 
{
#TODO: Place custom script here
		Start-Process Powershell.exe -WindowStyle Hidden ".\TaskKiller-Monitor\TaskKiller-Monitor.Run.ps1"
		Start-Process Powershell.exe -WindowStyle Hidden ".\TaskKiller-Manager\TaskKiller-Manager.Run.ps1"
	
	#. ".\TaskKiller-Monitor\TaskKiller-Monitor.Run.ps1"
		#. ".\TaskKiller-Manager\TaskKiller-Manager.Run.ps1"
}

$btnMonitor_OnClick= 
{
#TODO: Place custom script here
		. ".\TaskKiller-Monitor\TaskKiller-Monitor.Run.ps1"
}

$handler_label1_Click= 
{
#TODO: Place custom script here

}

$handler_button1_Click= 
{
#TODO: Place custom script here
		. ".\TaskKiller-Manager\TaskKiller-Manager.Run.ps1"
}

$OnLoadForm_StateCorrection=
{#Correct the initial state of the form to prevent the .Net maximized form issue
	$form1.WindowState = $InitialFormWindowState
}

#----------------------------------------------
#region Generated Form Code
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 218
$System_Drawing_Size.Width = 284
$form1.ClientSize = $System_Drawing_Size
$form1.DataBindings.DefaultDataSourceUpdateMode = 0
$form1.Name = "form1"
$form1.Text = "Primal Form"
$form1.add_Load($handler_form1_Load)

$txtAll.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 17
$System_Drawing_Point.Y = 137
$txtAll.Location = $System_Drawing_Point
$txtAll.Name = "txtAll"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 47
$System_Drawing_Size.Width = 174
$txtAll.Size = $System_Drawing_Size
$txtAll.TabIndex = 5
$txtAll.Text = "Click here to open the TaskKiller and the Monitoring:"
$txtAll.add_Click($handler_label3_Click)

$form1.Controls.Add($txtAll)


$btnAll.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 197
$System_Drawing_Point.Y = 132
$btnAll.Location = $System_Drawing_Point
$btnAll.Name = "btnAll"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnAll.Size = $System_Drawing_Size
$btnAll.TabIndex = 4
$btnAll.Text = "All"
$btnAll.UseVisualStyleBackColor = $True
$btnAll.add_Click($btnAll_OnClick)

$form1.Controls.Add($btnAll)

$txtMonitor.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 17
$System_Drawing_Point.Y = 92
$txtMonitor.Location = $System_Drawing_Point
$txtMonitor.Name = "txtMonitor"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 174
$txtMonitor.Size = $System_Drawing_Size
$txtMonitor.TabIndex = 3
$txtMonitor.Text = "Click here to open the Monitoring:"
$txtMonitor.add_Click($handler_txtMonitor_Click)

$form1.Controls.Add($txtMonitor)


$btnMonitor.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 197
$System_Drawing_Point.Y = 87
$btnMonitor.Location = $System_Drawing_Point
$btnMonitor.Name = "btnMonitor"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnMonitor.Size = $System_Drawing_Size
$btnMonitor.TabIndex = 2
$btnMonitor.Text = "Monitor"
$btnMonitor.UseVisualStyleBackColor = $True
$btnMonitor.add_Click($btnMonitor_OnClick)

$form1.Controls.Add($btnMonitor)

$txtTaskKiller.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 17
$System_Drawing_Point.Y = 48
$txtTaskKiller.Location = $System_Drawing_Point
$txtTaskKiller.Name = "txtTaskKiller"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 174
$txtTaskKiller.Size = $System_Drawing_Size
$txtTaskKiller.TabIndex = 1
$txtTaskKiller.Text = "Click here to open the TaskKiller:"
$txtTaskKiller.add_Click($handler_label1_Click)

$form1.Controls.Add($txtTaskKiller)


$btnTaskKiller.DataBindings.DefaultDataSourceUpdateMode = 0

$System_Drawing_Point = New-Object System.Drawing.Point
$System_Drawing_Point.X = 197
$System_Drawing_Point.Y = 43
$btnTaskKiller.Location = $System_Drawing_Point
$btnTaskKiller.Name = "btnTaskKiller"
$System_Drawing_Size = New-Object System.Drawing.Size
$System_Drawing_Size.Height = 23
$System_Drawing_Size.Width = 75
$btnTaskKiller.Size = $System_Drawing_Size
$btnTaskKiller.TabIndex = 0
$btnTaskKiller.Text = "TaskKiller"
$btnTaskKiller.UseVisualStyleBackColor = $True
$btnTaskKiller.add_Click($handler_button1_Click)

$form1.Controls.Add($btnTaskKiller)

#endregion Generated Form Code

#Save the initial state of the form
$InitialFormWindowState = $form1.WindowState
#Init the OnLoad event to correct the initial state of the form
$form1.add_Load($OnLoadForm_StateCorrection)
#Show the Form
$form1.ShowDialog()| Out-Null

} #End Function

#Call the Function
GenerateForm
