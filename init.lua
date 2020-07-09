local Camera = {}
setmetatable(Camera,{__index=function(self,key)
    if key == 'FOV' then
        return LocalPlayer():GetFOV()
    end
    if key == 'Object' then
        return LocalPlayer():GetViewEntity()
    end
end
})
_G.Camera= Camera
local Plyr = {}
setmetatable(Plyr,{__index = function(self,key)
    if key == 'Ammo' then
        return LocalPlayer():GetAmmo()
    end
    if key == 'Name' then
        return LocalPlayer():GetName()
    end
    if key == 'RunSpeed' then
        return LocalPlayer():GetRunSpeed()
    end
    if key == 'JumpPower' then
        return LocalPlayer():GetJumpPower()
    end
    if key == 'Alive' then
        return LocalPlayer():Alive()
    end
    if key == 'Crouching' then
        return LocalPlayer():Crouching()
    end
end
})
_G.Plyr = Plyr
