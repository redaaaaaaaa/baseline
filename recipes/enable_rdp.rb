cookbook_file 'c:\tmp\Enable-RDP.ps1' do
		source 'Enable-RDP.ps1'
		action :create
	end

	powershell_script 'enable_rdp' do
			code <<-EOH
				c:\tmp\Enable-RDP.ps1
			EOH
	end

	file 'c:\tmp\Enable-RDP.ps1' do
		action :delete
	end