-- منع تكرار التشغيل
if _G.ScriptRunning then return end
_G.ScriptRunning = true

-- دالة تشغيل الواجهة
function loadMainScript()
    -- تحديث رابط المكتبة لضمان التشغيل
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
                print("Auto Farm Started!")
            end
        end    
    })
    
    OrionLib:Init()
end

-- تشغيل الواجهة فوراً
loadMainScript()
