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
        ["KeybindMode"] = "Toggle",
        ["Delay"] = 0.1,
        ["Method"] = "MouseClick",
    },
    
    ["HitboxExpander"] = {
        ["Enabled"] = false,
        ["Keybind"] = "H",
        ["TargetKnocked"] = true,
        ["Size"] = {
            ["X"] = 14,
            ["Y"] = 14,
            ["Z"] = 14,
        },
        ["Visual"] = {
            ["Enabled"] = false,
            ["BoxColor"] = Color3.fromRGB(0, 180, 180),
            ["Transparency"] = 0.9,
            ["OutlineColor"] = Color3.fromRGB(0, 255, 255),
            ["OutlineTransparency"] = 1,
            ["Gradient"] = { -- DO NOT USE CURRENTLYS BROKEN / IN WORK
                ["Enabled"] = false, -- DO NOT USE CURRENTLYS BROKEN / IN WORK 
                ["TopColor"] = Color3.fromRGB(236, 236, 236), -- DO NOT USE CURRENTLYS BROKEN / IN WORK
                ["TopTransparency"] = 0.6, -- DO NOT USE CURRENTLYS BROKEN / IN WORK
                ["BottomColor"] = Color3.fromRGB(107, 50, 124), -- DO NOT USE CURRENTLYS BROKEN / IN WORK
                ["BottomTransparency"] = 0.8, -- DO NOT USE CURRENTLYS BROKEN / IN WORK
            }
        }
    },

    ["Macro"] = {
        ["Enabled"] = false,
        ["Keybind"] = "V",
        ["MS"] = 5,
        ["Mode"] = "Hold", -- "Hold" or "Toggle"
        ["Type"] = "First", -- "First", "Third" 
        ["Randomization"] = {
            ["Enabled"] = false,
            ["MinMultiplier"] = 0.8,
            ["MaxMultiplier"] = 1.2
        }
    },

    ["Visuals"] = {
        ["ESP"] = {
            ["Enabled"] = false,
            ["Keybind"] = "L",
            ["Boxes"] = true,
            ["Names"] = false,
            ["NameType"] = "Display",
            ["Distance"] = true,
            ["HealthBar"] = true,
            ["HealthColor"] = Color3.fromRGB(79, 121, 66),
            ["VisibilityCheck"] = false,
            ["BoxColor"] = Color3.fromRGB(255, 255, 255),
            ["TextColor"] = Color3.fromRGB(255, 255, 255),
            ["FontSize"] = 14,
            ["Workspace"] = false,
        },
        ["VelocityGraph"] = {
                ["Enabled"] = false,
                ["SelfGraph"] = true,
                ["Text"] = false,
                ["GraphSpeed"] = 7,
                ["Draggable"] = true,
                ["Smoothing"] = true,
                ["MaxSpeed"] = 50,
                ["LineThickness"] = 1,
                ["LineColor"] = Color3.fromRGB(255, 255, 255),
                ["BackgroundTransparency"] = 0,
                ["BackgroundColor"] = Color3.fromRGB(255, 255, 255),
                ["GraphColor"] = Color3.fromRGB(0, 255, 255),
                ["GraphSize"] = Vector2.new(100, 50),
                ["Position"] = Vector2.new(800, 700),
        },
        ["Text"] = {
            ["Enabled"] = false,
            ["Text"] = "discord.gg/sharpcc",
            ["Animations"] = true,
            ["Animation"] = "Glitch", -- Options: "None", "Typing", "Fade", "Glitch", "Fade In/Out"
            ["Smoothing"] = true,
            ["FollowSmoothness"] = 0.15,
            ["Color"] = Color3.fromRGB(255, 255, 0),
            ["Font"] = Enum.Font.Gotham,
            ["Size"] = 14,
            ["Outline"] = true,
            ["OutlineColor"] = Color3.fromRGB(0, 0, 0),
            ["TypingSpeed"] = 0.07,
            ["BackspaceSpeed"] = 0.05,
        }
    },
    
    ["Checks"] = {
        ["SelfKnocked"] = false,
        ["TargetKnocked"] = true,
        ["Grabbed"] = true,
        ["Reloading"] = true,
        ["Forcefield"] = true,
        ["FriendCheck"] = false,
        ["Item"] = {
            ["Enabled"] = false,
            ["Items"] = {
                "Wallet",
                "[Katana]",
                "[Knife]",
                "[Phone]",
                "Combat"
            }
        },
        ["Food"] = {
            ["Enabled"] = false,
            ["Items"] = {
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
            ["IDs"] = {123456, 123456}
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
        ["Panic"] = {
            ["Enabled"] = true,
            ["Keybind"] = "P",
            ["Mode"] = "Leave",
        }
    },
    ["Debug"] = false,
    ["Stages"] = false,
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/supercoolboi34/sharpcc/refs/heads/main/Sharp.cc"))()
