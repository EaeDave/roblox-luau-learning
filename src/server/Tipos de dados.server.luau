-- Alguns tipos de dados em Luau
local function tiposDeDados()
    local String = 'David'  -- string
    local Number = 123 -- number
    local NumberFloat = 1.52 -- number
    local instance = workspace.Baseplate  -- herda a classe instance
    
    local newPart = Instance.new("Part")  -- É possível criar novos objetos dessa forma
    newPart.Name = "NovaParte"  -- Alternando a propriedade Name da parte
    newPart.Parent = workspace  -- Alterando o local Parent da parte
end

-- tiposDeDados()
