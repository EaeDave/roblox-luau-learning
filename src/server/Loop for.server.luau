local function loopFor()
        -- for numérico

    -- primeiro valor: início
    -- segundo valor: objetivo
    -- terceiro valor: incremento
    for index = 1, 10, 1 do
        print(index)
    end

    for index = 10, 0, -1 do
        print(index)
    end

    local nomes = {"David", "Camila", "Liz"}

    for index = 1, #nomes, 1 do  -- Usando o for tradicional para iterar sobre os elementos do array
        print(nomes[index])
    end

    for index, nome in nomes do
        print(nome, index)
    end
end

-- loopFor()
