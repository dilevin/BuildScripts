require "getOSType"

function setProjectLocation()
	location("./build/"..getOSType())
end