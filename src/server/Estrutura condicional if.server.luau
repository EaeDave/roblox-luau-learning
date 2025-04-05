-- Trabalha com valores booleanos false/true
local function estruturaCondicional()
	if (5 +5 == 10) then
		print('VERDADEIRO')
	end
	
	-- local blocoRetornaErroCasoNaoTenha = workspace.Bloco
	local blocoRetornaFalsoCasoNaoTenha = workspace:FindFirstChild("Bloco")
	
	if (blocoRetornaFalsoCasoNaoTenha) then
		print('Encontrei o bloco')
	else  -- false
		print('Nao encontrei o bloco')
	end
	
	if blocoRetornaFalsoCasoNaoTenha then
		
	else
		Instance.new("Part", workspace).Name = "Bloco"
	end
	
end
-- estruturaCondicional()