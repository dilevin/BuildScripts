-- Given a library name check if there is an 
-- associated premake file
-- if so set the approriate defines and
-- include the directory

-- global table for tracking dependencies
loadedLibs = {}

function findExternalLibrary(libName, extpath)

	if os.isdir(extpath.."/"..libName) then
		print("Found directory "..extpath.."/"..libName)
		if os.isfile(extpath.."/"..libName.."/premake4.lua") then
			print("Found file "..extpath.."/"..libName.."/premake4.lua")
			
			if loadedLibs[libName] then
				print(libName.." already loaded.")
			else
				loadedLibs[libName] = (extpath.."/"..libName)
				include (loadedLibs[libName])
			end
			
		end
	end
end