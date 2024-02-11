local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Sonin Hub", HidePremium = false, SaveConfig = true,IntroTexT = "Sonin Hub", ConfigFolder = "Plagueconfig"})


-- Functions
function summon1()
    game:GetService("ReplicatedStorage").Remotes.Summon:InvokeServer("10","1")
end

function summon2()
    game:GetService("ReplicatedStorage").Remotes.Summon:InvokeServer("10","2")
end

function usecodes()
    for i, code in ipairs(codes) do
        game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer(code)
    end
end

function addCode(newCode)
    table.insert(codes, newCode)
end


--Values
local codes = {
    "BlamTopSecretCodeWontWorkIfNotSubbed",
    "GoalReached",
    "TyFor1mVisitsPart2",
    "TyFor1mVisitsPart1",
    "D1SGUISED",
    "YammoRework",
    "TyFor10kFavREAL",
    "NeelsTV",
    "FinalDelay",
    "RELEASE",
    "SorryForDelay",
    "Sub2KingLuffy",
    "Sub2CodeNex77k",
    "Sub2Blamspot524k",
    "Sub2HotSauceHan",
    "ToadBoi120k",
    "Shutdown",
    "Fixes",
    "Mejonson10000",
    "BlamsSecret1MilionUniquePlayerCode",
    "Update1TrailerHYPE",
    "BlamsAndShocksNightmare100kMemberReRollCodeTrySubscribingToBlamSpotOnYTAndFollowingFr_ShockOnTwitterIfItDoesntWork"
}



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

MainTab:AddButton({
    Name = "Adicionar Codigo",
    Callback = function()
        local newCode = Window:MakeTextbox({Name = "New Code", Default = "", PlaceholderText = "Enter new code"})
        newCode:MakePopup()
        newCode.FocusLost:Connect(function()
            addCode(newCode.Text)
        end)
    end    
})

end


OrionLib:Init()
