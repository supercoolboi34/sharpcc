local NotificationLibrary = {}

local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")

local screenGui = CoreGui:FindFirstChild("NotificationGui") or Instance.new("ScreenGui")
screenGui.Name = "NotificationGui"
screenGui.Parent = CoreGui
screenGui.ResetOnSpawn = false

local activeNotifications = {}

local function extractPlainText(richText)
    return richText:gsub("<[^>]->", "")
end

function NotificationLibrary:Notification(text, duration, fadeOutTime)
    duration = duration or 5
    fadeOutTime = fadeOutTime or 1

    local plainText = extractPlainText(text)

    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0, 400, 0, 45)
    frame.Position = UDim2.new(0.5, -200, 1, 0)
    frame.BackgroundTransparency = 1
    frame.Parent = screenGui

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextSize = 18
    textLabel.RichText = true
    textLabel.Text = ""
    textLabel.FontFace = Font.new("rbxasset://fonts/families/GothamSSm.json")
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.TextTransparency = 1
    textLabel.Parent = frame

    local startPosition = #activeNotifications
    frame.Position = UDim2.new(0.5, -200, 0.85 - (startPosition * 0.07), 0)

    table.insert(activeNotifications, frame)

    local slideIn = TweenService:Create(frame, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -200, 0.85 - (startPosition * 0.07), 0)})
    local fadeIn = TweenService:Create(textLabel, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 0})

    slideIn:Play()
    fadeIn:Play()

    local function generateRandomString(length)
        local characters = "!@#$%^&*()_+=-ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
        local result = ""
        for i = 1, length do
            local randIndex = math.random(1, #characters)
            result = result .. string.sub(characters, randIndex, randIndex)
        end
        return result
    end

    local function typeTextEffect(finalText, fullRichText)
        local tempText = generateRandomString(#finalText)
        textLabel.Text = tempText

        for i = 1, #finalText do
            tempText = string.sub(tempText, 1, i - 1) .. string.sub(finalText, i, i) .. string.sub(tempText, i + 1)
            textLabel.Text = "<font color='rgb(255,255,255)'>" .. tempText .. "</font>"
            wait(0.015)
        end

        textLabel.Text = fullRichText
    end

    typeTextEffect(plainText, text)

    task.wait(duration)

    local fadeOut = TweenService:Create(textLabel, TweenInfo.new(fadeOutTime, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {TextTransparency = 1})
    fadeOut:Play()

    task.wait(fadeOutTime)

    table.remove(activeNotifications, table.find(activeNotifications, frame))
    frame:Destroy()

    for i, notif in ipairs(activeNotifications) do
        local moveUp = TweenService:Create(notif, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, -200, 0.85 - ((i - 1) * 0.07), 0)})
        moveUp:Play()
    end
end

return NotificationLibrary
