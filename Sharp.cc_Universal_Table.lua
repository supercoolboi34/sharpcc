--[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
 ________  ___  ___  ________  ________  ________   ________  ________     
|\   ____\|\  \|\  \|\   __  \|\   __  \|\   __  \ |\   ____\|\   ____\    
\ \  \___|\ \  \\\  \ \  \|\  \ \  \|\  \ \  \|\  \\ \  \___|\ \  \___|    
 \ \_____  \ \   __  \ \   __  \ \   _  _\ \   ____\\ \  \    \ \  \       
  \|____|\  \ \  \ \  \ \  \ \  \ \  \\  \\ \  \___|_\ \  \____\ \  \____  
    ____\_\  \ \__\ \__\ \__\ \__\ \__\\ _\\ \__\ |\__\ \_______\ \_______\
   |\_________\|__|\|__|\|__|\|__|\|__|\|__|\|__| \|__|\|_______|\|_______|
   \|_________|                                                            

                                                                    
discord.gg/sharpcc
--]]

getgenv().Sharp = {
    ['Key'] = "", -- [ PASTE YOUR LUARMOR KEY BETWEEN THOSE SYMBOLS "" ]
    ['Global'] = {
        ['Death'] = {Self = true, Target = true},
        ['Team'] = false,
        ['Grabbed'] = true,
        ['Reloading'] = true,
        ['Forcefield'] = true,
        ['UncapFPS'] = true,
        ['Resolver'] = true,
    },
    ['Main'] = {
        ['Enabled'] = true,
        ['Keybind'] = "C",
        ['KeybindMode'] = "Toggle",
        ['Delay'] = 0.03,
        ['NotifyOnExecute'] = true,
        ['Visualizing'] = {
            ['SendNotification'] = false,
            ['Box'] = {Visible = false, Size = Vector3.new(1.4, 4.7, 1.3), Color = Color3.fromRGB(3, 100, 255)},
        },
        ['Prediction'] = {
            ['Horizontal'] = 0.12250, 
            ['Vertical'] = 0.10790,
            ['AutoPrediction'] = false,
        },
    },
    ['Color'] = {
        ['Enabled'] = false,
        ['Brightness'] = 0.1,
        ['Contrast'] = 0.06,
        ['Saturation'] = 0.9,
    },
    ['Whitelists'] = {
        ['RobloxIDs'] = {123456, 123456},
        ['FriendCheck'] = false,
    },
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/supercoolboi34/sharpcc/main/univloader"))()
