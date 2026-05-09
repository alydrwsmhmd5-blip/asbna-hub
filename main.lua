-- منع تكرار التشغيل إذا كان السكربت شغال
if _G.ScriptRunning then 
    _G.ScriptRunning = nil 
end
_G.ScriptRunning = true

-- دالة تشغيل الواجهة المحدثة
function loadMainScript()
    -- استخدام رابط مكتبة Orion مستقر جداً
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    local Window = OrionLib:MakeWindow({
        Name = "asbna yboya HUB | PRO", 
        HidePremium = false, 
        SaveConfig = true, 
        ConfigFolder = "AsbnaData"
    })

    local Tab = Window:MakeTab({
        Name = "Main",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })

    Tab:AddToggle({
        Name = "Auto Farm (تلفيل تلقائي)",
        Default = false,
        Callback = function(Value)
            _G.AutoFarm = Value
            print("Status: ", Value)
        end    
    })
    
    OrionLib:Init()
end

-- استدعاء الواجهة فوراً لتخطي مشكلة حظر الشات
task.wait(0.5)
loadMainScript()
