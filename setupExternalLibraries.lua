function setupExternalLibraries()
	for k,v in pairs(loadedLibs) do
		defines{string.upper(k)}
	end
end
