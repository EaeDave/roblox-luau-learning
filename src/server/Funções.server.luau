local function funcoes()
	local function printar()
		print('Foi executado')
	end
	
	printar()  -- Chamada da função
	printar()  -- Executará 2x
	
	local function somar(num1, num2)
		local soma = num1 + num2
		return soma, num1, num2
	end
	
	local primeiraSoma = somar(5, 5)
	print('O resultado da soma é ' .. primeiraSoma)
end

-- funcoes()