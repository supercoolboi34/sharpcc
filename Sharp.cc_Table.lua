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
    ["Key"]  = "",
    ["Main"] = {
        ["Enabled"] = true,
        ["Keybind"] = "C",
        ["KeybindMode"] = "Toggle", -- Toggle, Hold.
        ["Delay"] = 0.1,
        ["Method"] = "MouseClick",
        -- ["HitChance"] = . Ignore --> (Not Ready Yet)
    },  -- Change "Method" Depending on your Executor, all should support VirtualInputManager, but MouseClick is the best option

    ["Visual"] = {
        ["ESP"] = {
            ["Enabled"] = true,
            ["Keybind"] = "L",
            ["Box"] = true,
            ["Name"] = true,
            ["NameType"] = "Display",
            ["Distance"] = true,
            ["HealthBar"] = true,
            ["HealthBarColor"] = Color3.fromRGB(79, 121, 66),
            ["VisibilityCheck"] = false,
            ["BoxColor"] = Color3.fromRGB(255, 255, 255),
            ["TextColor"] = Color3.fromRGB(255, 255, 255),
            ["FontSize"] = 14,
            ["Workspace"] = false -- New: Render ESP in Workspace (3D) or Screen (2D)
        }
    },

    ["Checks"] = {
        ["SelfKnocked"] = false, -- Self Knocked
        ["TargetKnocked"] = true, -- Target Knocked
        ["Grabbed"] = true, -- Picked Up
        ["Reloading"] = true, -- Reloading
        ["Forcefield"] = true, -- Spawn Protection
        ["FriendCheck"] = false,
        ["Item"] = {
            ["Enabled"] = true, -- Knife Check
            ["Items"] = {
                "Wallet",
                "[Katana]",
                "[Knife]",
                "[Phone]",
                "Combat"
            }
        },
        ["Food"] = {
            ["Enabled"] = false, -- Food Check (really not needed but yea)
            ["Foods"] = {
                "[Taco]",
                "[Hamburger]",
                "[HotDog]",
                "[Chicken]",
                "[Cranberry]",
                "[Pizza]",
                "[Lemonade]",
                "[Cookie]",
                "[Popcorn]",
                "[Lettuce]"
            }
        },
        ["Whitelist"] = {
            ["Enabled"] = false,
            ["RobloxIDs"] = {123456, 123456}
        }
    },

    ["Notification"] = {
        ["Enabled"] = true,
        ["Execution"] = true,
        ["ToggleOn"] = true,
        ["ToggleOff"] = true,
        ["ToggleESP"] = true,
    },

    ["Misc"] = {
        ["UncapFPS"] = true,
        ["Color"] = {
            ["Enabled"] = false,
            ["Brightness"] = 0.1,
            ["Contrast"] = 0.06,
            ["Saturation"] = 0.9
        }
    },

    ["Debug"] = false
}

loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/d1887d517365b35df9cdd5c6918ac43f.lua"))()
