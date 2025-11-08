--[[  __         __          __________
     /  \       /  \        / ________/     
	/ /\ \     / /\ \      / /_______                             
   / /  \ \   / /  \ \    /_______  /  
  /	/    \ \_/ /    \ \  ________/ /    
 / /      \___/      \ \/_________/         
 🍊 MANDALİNA STUDIO © 2025 By ProfDrOsman 🍊
 [Open-Source portatible shift to run model]
]]--

local UserInputService = game:GetService("UserInputService")
local player = game:GetService("Players").LocalPlayer --client
UserInputService.InputBegan:Connect(function(input, GameProssedEvent)
	if GameProssedEvent == false then
		if input.KeyCode == Enum.KeyCode.LeftShift then --controllin is input is shift
			local character = player.Character
			local humanoid = character:WaitForChild("Humanoid")
			humanoid.WalkSpeed = 32 --run speed
		end
	end
end)

UserInputService.InputEnded:Connect(function() --normal speed
	local character = player.Character
	local humanoid = character:WaitForChild("Humanoid")
	if humanoid.Health > 0  then
		humanoid.WalkSpeed = 16 --current speed
	end
end)
