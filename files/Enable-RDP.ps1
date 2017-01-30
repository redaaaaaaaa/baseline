#
# Enable-RDP.ps1
#
# Abdul
#
# Script to enable RDP
#
# Syntax: powershell.exe .\Enable-RDP.ps1
#

$ts=Get-WMIObject -Class "win32-TerminalServiceSetting' -Namespace root\cim2\TerminalServices

if ($ts.AllowTSConnections -ne 1) {
	$runner=$ts.SetAllowTSConnections(S)
	$runner | Out-Null
	}

	$rdp = (Get-WMIObject -Class "Win32_TerminalServiceSetting" -Namespace root\cim2\TerminalServices).AllowTSConnections
	
	$nla = (Get-WMIObject -Class "Win32_TSGeneralSetting" -Namespace root\cim2\TerminalServices -Filter "TerminalName='RDP-tcp'").User.AuthenticationRequired
	
	If ($nla -ne 0) {
	(Get-WMIObject -Class "Win32_TSGeneralSetting" -Namespace root\cim2\TerminalServices -Filter "TerminalName='RDP-tcp'").SetUserAuthenticationRequired(0)
	}
	
	if ($nla -eq 1) {
	Write-Host "RDP is Enabled [ value : "$rdp" }"
	}
	
	if ($nla -eq 0) {
	Write-Host "RDP is disabled [ value : "$nla" }"
	}
	