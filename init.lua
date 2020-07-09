local genv = {}
local Camera = {}
setmetatable(Camera,{__index=function(self,key)
    if key == "Fov" then
        return LocalPlayer():GetFOV()
    end
    if key == "Object" then
        return LocalPlayer():GetViewEntity()
    end
end
})
local Plyr = {}
setmetatable(Plyr,{__index = function(self,key)
    if key == "Ammo" then
        return LocalPlayer():GetAmmo()
    end
    if key == "Name" then
        return LocalPlayer():GetName()
    end
    if key == "RunSpeed" then
        return LocalPlayer():GetRunSpeed()
    end
    if key == "JumpPower" then
        return LocalPlayer():GetJumpPower()
    end
    if key == "Alive" then
        return LocalPlayer():Alive()
    end
    if key == "Crouching" then
        return LocalPlayer():Crouching()
    end
    if key == "Drive" then
        return LocalPlayer().EnterVehicle
    end
end
})
setmetatable(genv,{__newindex=function(...)
  error('The metatable is locked.')
end})
function getgenv()
  return genv
end
function getgmenv()
    return _G
end
function setclipboard(text)
    LocalPlayer():SetClipboardText(text)
end
getgenv().wait = function(time)
  if time == nil then
    error('A value to the function wait must be supplied')
  end
  local clock = os.clock
   local t0 = clock()
   while clock() - t0 <= value do
   end
end
local 

setmetatable(genv,{__newindex=function(...)
  error("The metatable is locked.")
end})
function getgenv()
  return genv
end
getgenv().wait = function(time)
  if time == nil then
    error("A value to the function 'wait' must be supplied")
  end
  local clock = os.clock
   local t0 = clock()
   while clock() - t0 <= value do
   end
end
for i,v in pairs(genv) do
  _G.i = v
 end
