-- PLague Hub
if game.PlaceId == 12886143095 then

    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))
    local Window = OrionLib:MakeWindow({Name = "Plague Hub", HidePremium = false, SaveConfig = true, IntroTexT = "Plague Hub", ConfigFolder = "Plagueconfig"})

    -- Values
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
        "Update1TrailerHYPE"
    }

    -- Functions
    function summon1()
        game:GetService("ReplicatedStorage").Remotes.Summon:InvokeServer("10", "1")
    end

    function summon2()
        game:GetService("ReplicatedStorage").Remotes.Summon:InvokeServer("10", "2")
    end

    function usecodes()
        for _, code in ipairs(codes) do
            game:GetService("ReplicatedStorage").Remotes.ClaimCode:InvokeServer(code)
        end
    end

    -- GUI for adding/removing codes
    local codeInputBox = Window:MakeTextbox({Name = "Code Input", Default = "", Callback = function(text)
        if text == "" then return end

        if text:sub(1, 1) == "+" then
            table.insert(codes, text:sub(2))
        elseif text:sub(1, 1) == "-" then
            for i, code in ipairs(codes) do
                if code == text:sub(2) then
                    table.remove(codes, i)
                    break
                end
            end
        else
            warn("Invalid input format. Use '+' to add a code or '-' to remove a code.")
        end
    end})

    codeInputBox:MakePopup()

end
