if game.PlaceId == 7603178367 then
    local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
    local Window = Library.CreateLib("Chipotle Hub", "Ocean")
    
    local Main = Window:NewTab("Main")
    local MainSection = Main:NewSection("AutoFarm")


    MainSection:NewToggle("Delivery autofarm (infinite) ", "Gain money infinitely", function(state)
        if state then
            _G.toggleStatus = true
            while _G.toggleStatus == true do
                local args = {
                    [1] = "StartDelivery"
                }
                game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))

                for i = 1, 5, 1 do
                    local args = {
                        [1] = "UpdateDelivery",
                        [2] = workspace.DeliveryLocations:FindFirstChild("6")
                    }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
                end

                local args = {
                    [1] = "CompleteDelivery"
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end
        else
            _G.toggleStatus = false
        end  
    end) 

    MainSection:NewButton("Delivery autofarm (finite) ", "Gain money infinitely", function()
            local args = {
                [1] = "StartDelivery"
            }
            game:GetService("ReplicatedStorage").RemoteFunction:InvokeServer(unpack(args))

            for i = 1, 5, 1 do
                local args = {
                    [1] = "UpdateDelivery",
                    [2] = workspace.DeliveryLocations:FindFirstChild("6")
                }
                game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
            end

            local args = {
                [1] = "CompleteDelivery"
            }
            game:GetService("ReplicatedStorage").RemoteEvent:FireServer(unpack(args))
    end)
end