-- tables serve tanto para arrays, tanto para objetos/dictionary
-- Mesmo arrays, na realidade são dictionarys de chave/valor
-- Se não explícito chave, a linguagem atribui automaticamente 1, 2, 3, 4, 5... Para cada item
local function tables()
    
    local numbers = {100, 200, 300, 400, 500, 600}  -- Em luau, tables são sempre dictionary
    print(numbers[1])  -- Imprime 100
    print(numbers[3])  -- 300
    
    -- task.wait(4)
    local workspaceChildren = workspace:GetChildren()  -- Retorna todos objetos filhos do workspace em uma table
    print(workspaceChildren)  -- Mostra todos os objetos agrupados
    
    local pessoas = {"David", "Camila", "Liz"}  -- Array
    print(pessoas[1], pessoas[2], pessoas[3])
    
    
    -- key = value
    local playerInfo = {
        Money = 1000,  -- Money é uma key, e 1000 é value
        Xp = 100,
        Level = 50
    }
    
    -- Acessando propriedades do dictionary/object/table de chave/valor
    print(playerInfo.Xp)
    print(playerInfo["Level"])
    
    local array = {100, 50, 25, 0}
    print(array[3])  -- 25
    
    -- 8129067889 (ID da minha conta)
    
    local devIds = {8129067889}
    
    game:GetService("Players").PlayerAdded:Connect(function(player)
        print(player.UserId)
        local userId = player.UserId
        if table.find(devIds, userId) then
            print("O jogador ".. player.Name .. " é um Dev")
        end
    end)
end

-- tables()
