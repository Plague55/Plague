-- PLague Hub
if game.PlaceId == 12886143095 then

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Plague Hub", HidePremium = false, SaveConfig = true,IntroTexT = "Plague Hub", ConfigFolder = "Plagueconfig"})

--Values

--Functions
function summon1()
    game:GetService("ReplicatedStorage").Remotes.Summon:InvokeServer("10","1")
end

function summon2()
    game:GetService("ReplicatedStorage").Remotes.Summon:InvokeServer("10","2")
end

function usecodes()
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("BlamTopSecretCodeWontWorkIfNotSubbed")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("GoalReached")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("TyFor1mVisitsPart2")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("TyFor1mVisitsPart1")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("D1SGUISED")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("YammoRework")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("TyFor10kFavREAL")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("NeelsTV")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("FinalDelay")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("RELEASE")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("SorryForDelay")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("Sub2KingLuffy")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("Sub2CodeNex77k")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("Sub2Blamspot524k")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("Sub2HotSauceHan")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("ToadBoi120k")
    game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer("Shutdown")
end


--Tabs
local MainTab = Window:MakeTab({
	Name = "Principais Funcao",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--Toggles

--Buttons
MainTab:AddButton({
	Name = "Sumonar 10 (Primeiro Banner)",
	Callback = function()
            summon1()
  	end    
})


MainTab:AddButton({
	Name = "Sumonar 10 (Segundo Banner)",
	Callback = function()
            summon2()
  	end    
})

MainTab:AddButton({
	Name = "Use Todos Os Codigos",
	Callback = function()
            usecodes()
  	end    
})


end

OrionLib:Init()

