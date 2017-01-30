# http://jira
# Changes the user preference for the Windows Powershell execution policy.
# The execution policy is part of the security strategy of Windows Powershell.
# It determines whether you can load configuration files (including your Windows Powershell profile) and 
# run scripts, and it determines which scripts, if any, must be digitally signed before they will run.
#
# for more information, see about_Execution_Policies (http://go.microsoft.com/fwlink/?LinkID=135170).

powershell_scripts 'PSExecPol' do
			guard_interpreter "powershell_script
			code 'Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
		end