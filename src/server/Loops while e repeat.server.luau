-- local pastaBlocosGerados = workspace:FindFirstChild("BlocosGerados")
-- local variavelControle = 1

-- function generateRandomPart()
--     if not pastaBlocosGerados then
--         pastaBlocosGerados = Instance.new("Folder", workspace)
--         pastaBlocosGerados.Name = "BlocosGerados"
--     end

--     local part = Instance.new("Part", workspace.BlocosGerados)
--     part.Name = "Part" .. variavelControle
--     variavelControle += 1
--     part.Size = Vector3.new(3, 3, 3)
--     part.BrickColor = BrickColor.random()
--     part.Position = Vector3.new(
--         math.random(-25, 25), -- X
--         math.random(0, 25), -- Y
--         math.random(-25, 25)  -- Z
--     )
--     part.Anchored = true
-- end

-- function deleteRandomPart()
--     task.wait(3)
--     local parts = workspace.BlocosGerados:GetChildren() -- Retorna todos os filhos da pasta "BlocosGerados"
--     local randomIndex = math.random(1, #parts)  -- #parts retorna o número de filhos na pasta
--     local partToDelete = parts[randomIndex]
--     partToDelete:Destroy()
--     print(#parts)
-- end

-- local tempoDeEspera = 0
-- while true do  -- Mantém o loop infinitamente
--     while tempoDeEspera < 5 do
--         task.wait(1.5)
--         generateRandomPart()
--         tempoDeEspera += 1
--     end
--         deleteRandomPart()
--         tempoDeEspera = 0
-- end

local function loopsWhileERepeat()
    
    local x = 1
    while x < 11 do  -- Repete enquanto essa condição for verdadeira
        print(x)
        x += 1
    end
    
    local y = 1
    repeat  -- Repete pelo menos uma vez
        print(y)
        y += 1
    until y == 11  -- Até essa condição ser verdadeira, o loop não para
    
    
    -- O personagem pode demorar para entrar no servidor
    local function OnPlayerAdded(player)
        local character = player.Character
        print(character)
        while not character do  -- Essa condição garante que o personagem foi spawnado
            character = player.Character
            task.wait(1)
        end
        print(character)
    end
    
    game:GetService("Players").PlayerAdded:Connect(OnPlayerAdded)
end

-- loopsWhileERepeat()