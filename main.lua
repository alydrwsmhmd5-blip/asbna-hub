-- منع تكرار تشغيل السكربت إذا كان شغال أصلاً
if _G.ScriptRunning then return end
_G.ScriptRunning = true

print("asbna yboya script is watching the chat...")

-- مراقبة الشات
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    -- الكلمة اللي تفتح السكربت
    if msg:lower() == "asbna yboya" then
        print("Access Granted! Loading UI...")
        loadMainScript() -- هذي الدالة بنعرفها في الخطوة الجاية
    end
end)

function loadMainScript()
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    
    local Window = OrionLib:MakeWindow({
        Name = "asbna yboya HUB | PRO Edition", 
        HidePremium = false, 
        SaveConfig = true, 
        ConfigFolder = "AsbnaData"
    })

    -- إضافة قسم التلفيل
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
                -- هنا نحط كود الهجوم السريع
            end
        end    
    })
    
    OrionLib:Init()
end