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
    }, -- XENO & MORE LEVEL 3 READ: Change "Method" Depending on your Executor, all should support VirtualInputManager, but MouseClick is the best option!

    ["Visual"] = {
        ["ESP"] = {
            ["Enabled"] = true,
            ["Keybind"] = "L",
            ["Box"] = true,
            ["Name"] = false,
            ["NameType"] = "Display",
            ["Distance"] = true,
            ["HealthBar"] = true,
            ["HealthBarColor"] = Color3.fromRGB(79, 121, 66),
            ["VisibilityCheck"] = false,
            ["BoxColor"] = Color3.fromRGB(255, 255, 255),
            ["TextColor"] = Color3.fromRGB(255, 255, 255),
            ["FontSize"] = 14,
            ["Workspace"] = false,
        }
    },

    ["Checks"] = {
        ["SelfKnocked"] = true,
        ["TargetKnocked"] = true,
        ["Grabbed"] = true,
        ["Reloading"] = true,
        ["Forcefield"] = true,
        ["FriendCheck"] = false,
        ["Item"] = {
            ["Enabled"] = true, -- Knife Check
            ["Items"] = {
                "Wallet",
                "[Katana]",
                "[Knife]",
                "[Phone]",
                "Combat",
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
                "[Lettuce]",
            }
        },
        ["Whitelist"] = {
            ["Enabled"] = false,
            ["RobloxIDs"] = {123456, 123456}
        }
    },

    ["Notification"] = {
        ["Enabled"] = false,
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
            ["Saturation"] = 0.9,
        },
        ["PanicMode"] = {
            ["Enabled"] = true,
            ["Keybind"] = "P",
            ["Mode"] = "Leave", -- Leave, Kick, Crash, Rejoin
        }
    },

    ["Debug"] = false,
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/supercoolboi34/sharpcc/refs/heads/main/Sharp.cc"))()
