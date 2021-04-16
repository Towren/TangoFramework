--Made by Towren. Free to use under the MIT License.

local module = {}

module.fireServer = function(event)
	event:FireServer()
	print("Fired server.")
end

module.fireClient = function(event, player)
	event:FireClient(player)
	print("Fired client.")
end

module.fireAllClients = function(event)
	event:FireAllClients()
	print("Fired all clients.")
end

module.tween = function(part, goal, duration, easingDirection, easingStyle)
	local TweenService = game:GetService("TweenService")
	
	local tweenInfo = TweenInfo.new(duration, easingStyle, easingDirection, 0, false, 0)

	local tween = TweenService:Create(part, tweenInfo, goal)

	tween:Play()
end

module.getService = function(service)
	game:GetService(service)
end

return module
