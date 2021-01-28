#--------------------------------------------
# Declare Global Variables and Functions here
#--------------------------------------------

## - [ Section to initialize DataTable objects] - ##
## - Create DataTable:
$processTable = New-Object System.Data.DataTable;

## - Defining DataTable object columns and rows properties:
# - Column1 = "ID".
$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.Int32");
$column.ColumnName = "ID";
$processTable.Columns.Add($column);

# - Column2 = "Process Name".
$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "ProcessName";
$processTable.Columns.Add($column);

# - Column3 = "CPU".
$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.String");
$column.ColumnName = "CPU";
$processTable.Columns.Add($column);

# - Column4 = "Responding".
$column = New-Object System.Data.DataColumn;
$column.DataType = [System.Type]::GetType("System.Boolean");
$column.ColumnName = "Responding";
$processTable.Columns.Add($column);


#Sample function that provides the location of the script
function Get-ScriptDirectory
{
<#
	.SYNOPSIS
		Get-ScriptDirectory returns the proper location of the script.

	.OUTPUTS
		System.String
	
	.NOTES
		Returns the correct path within a packaged executable.
#>
	[OutputType([string])]
	param ()
	if ($null -ne $hostinvocation)
	{
		Split-Path $hostinvocation.MyCommand.path
	}
	else
	{
		Split-Path $script:MyInvocation.MyCommand.Path
	}
}

#Sample variable that provides the location of the script
[string]$ScriptDirectory = Get-ScriptDirectory


