local ServerStorage = game:GetService("ServerStorage")
local Players = game:GetService("Players")
local coinTemplate = ServerStorage.Coin
local coinsFolder = workspace.Coins
local playerTotalCoins = 0

local function spawnCoin()
        local newCoin = coinTemplate:Clone()
        newCoin.Position = Vector3.new(0, 50, 0)
        newCoin.Size = Vector3.new(1, 1, 1)
        newCoin.Parent = coinsFolder
    
        newCoin.Touched:Connect(function(touchedPart)
            local player = Players:FindFirstChild(touchedPart.Parent.Name)
            if player then
                newCoin:Destroy()
                playerTotalCoins += 1
                print(playerTotalCoins)
            end
        end)
end

-- Players.ChildAdded:Connect(function(child)
--     spawnCoin()
-- end)