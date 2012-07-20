--get the OS type, as a string 
function getOSType()
	
	if os.is("Windows") then
		osType = "win"
	elseif os.is("Linux") then
		osType = "linux"
	elseif os.is("maxosx") then
		osType = "osx"
	end
	
	if os.is64bit() then
		osType = (osType.."64")
	else 
		osType = (osType.."32")
	end
	
	return 	osType
	
end