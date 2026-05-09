-- منع تكرار تشغيل السكربت إذا كان شغال أصلاً
if _G.ScriptRunning then return end
_G.ScriptRunning = true

-- استدعاء الواجهة فوراً
loadMainScript() 

function loadMainScript()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    local Window = OrionLib:MakeWindow({
        Name = "asbna yboya HUB | PRO Edition", 
        HidePremium = false, 
        SaveConfig = true, 
        ConfigFolder = "AsbnaData"
    })

    local Tab = Window:MakeTab({
        Name = "Auto Farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddToggle({
        Name = "Fast Auto Farm (تلفيل سريع)",
        Default = false,
        Callback = function(Value)
            _G.AutoFarm = Value
            if Value then
                -- هنا كود التلفيل القوي
                print("Auto Farm Started!")
            end
        end    
    })
    
    OrionLib:Init()
end
