local function eventos()
    local objeto = Instance.new("Part", workspace)
    objeto.BrickColor = BrickColor.Yellow()
    objeto.Anchored = true
    objeto.CFrame = CFrame.new(10, 5, 0)
    
    local function onTouched(partTocada)
        local head = partTocada.Parent:FindFirstChild("Head")
        local humanoid = partTocada.Parent:FindFirstChild("Humanoid")
        local humanoidRootPart = partTocada.Parent:FindFirstChild("HumanoidRootPart")
        print(partTocada.Parent)
    
        if partTocada == head then
            humanoid.Health = 0
        end
    
        if partTocada == humanoidRootPart then
            humanoid.WalkSpeed += 10
        end
        -- print(partTocada.Name .. " tocou o objeto!")
        -- objeto:Destroy()  -- Destroi o objeto após ser tocado
    end
    
    objeto.Touched:Connect(onTouched)  -- Touched é um evento e :Connect() é um método do objeto
end

-- eventos()
