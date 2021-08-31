ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)
--SetPedMovementClipset(GetPlayerPed(-1), "move_m@quick", true)

RegisterNetEvent('bongo:use')
    AddEventHandler('bongo:use', function()
        local playerPed = GetPlayerPed(-1)
        local playerPed = PlayerPedId()
        TriggerEvent("mythic_progbar:client:progress", {
            name = "unique_action_name",
            duration = 10000,
            label = "Hút Thuốc Lào",
            useWhileDead = false,
            canCancel = true,
            controlDisables = {
                disableMovement = false,
                disableCarMovement = true,
                disableMouse = false,
                disableCombat = true,
            },
            animation = {
                animDict = "anim@safehouse@bong",
                anim = "bong_stage4",
            },
            prop = {
                model = "prop_bong_01",
            }
        }, function(status)
            if not status then
              RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK") 
              while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
              Citizen.Wait(0)
              end  
              Citizen.Wait(3000)
              ClearPedTasksImmediately(playerPed)
              SetTimecycleModifier("spectator3")
              SetPedMotionBlur(playerPed, true)
              SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@VERYDRUNK", true)
              SetPedIsDrunk(playerPed, true)
              AnimpostfxPlay("ChopVision", 10000001, true)
              ShakeGameplayCam("DRUNK_SHAKE", 1.0)
          --vvvvvvvvvvvvvvvv
              Citizen.Wait(100000)
          --^^^^^^^^^^^^^^^^
          --Time of effect
          --  after wait stop all effects
              SetPedMoveRateOverride(PlayerId(),1.0)
              SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
              SetPedIsDrunk(GetPlayerPed(-1), false)		
              SetPedMotionBlur(playerPed, false)
              ResetPedMovementClipset(GetPlayerPed(-1))
              AnimpostfxStopAll()
              ShakeGameplayCam("DRUNK_SHAKE", 0.0)
              SetTimecycleModifierStrength(0.0)
            end
        end)
    end)

RegisterNetEvent('kypo-drug-effect:onWeed')
AddEventHandler('kypo-drug-effect:onWeed', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("MOVE_M@DRUNK@VERYDRUNK") 
    while not HasAnimSetLoaded("MOVE_M@DRUNK@VERYDRUNK") do
      Citizen.Wait(0)
    end    
    exports['b1g_notify']:Notify('true', 'Bạn vừa làm 1 điếu cần sa')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator6")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "MOVE_M@DRUNK@VERYDRUNK", true)
    SetPedIsDrunk(playerPed, true)
    AnimpostfxPlay("ChopVision", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.0)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
    SetPedArmour(PlayerPedId(), 50)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('kypo-drug-effect:onHeroin')
AddEventHandler('kypo-drug-effect:onHeroin', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@hobo@a") 
    while not HasAnimSetLoaded("move_m@hobo@a") do
      Citizen.Wait(0)
    end    
    exports['b1g_notify']:Notify('true', 'Bạn vừa chích 1 ống heroin')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetTimecycleModifier("spectator3")
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@hobo@a", true)
    SetPedIsDrunk(playerPed, true)
    AnimpostfxPlay("HeistCelebPass", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 3.0)
	
    SetEntityHealth(GetPlayerPed(-1), 150)
    SetPedArmour(PlayerPedId(), 100)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('kypo-drug-effect:onLsd')
AddEventHandler('kypo-drug-effect:onLsd', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@buzzed") 
    while not HasAnimSetLoaded("move_m@buzzed") do
      Citizen.Wait(0)
    end    
    exports['b1g_notify']:Notify('true', 'Bạn vừa làm 1 tí chất kích thích')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@buzzed", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("Rampage", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('kypo-drug-effect:onMeth')
AddEventHandler('kypo-drug-effect:onMeth', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@drunk@slightlydrunk") 
    while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
      Citizen.Wait(0)
    end    
    exports['b1g_notify']:Notify('true', 'Bạn vừa làm 1 điếu Meth')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("SuccessMichael", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)

RegisterNetEvent('kypo-drug-effect:onLsa')
AddEventHandler('kypo-drug-effect:onLsa', function()
  
  local playerPed = GetPlayerPed(-1)
  local playerPed = PlayerPedId()
  
    RequestAnimSet("move_m@buzzed") 
    while not HasAnimSetLoaded("move_m@buzzed") do
      Citizen.Wait(0)
    end    
    exports['b1g_notify']:Notify('true', 'Bạn vừa làm 1 điếu gì gì đó')
    TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING_POT", 0, 1)
    Citizen.Wait(3000)
    ClearPedTasksImmediately(playerPed)
    SetPedMotionBlur(playerPed, true)
    SetPedMovementClipset(playerPed, "move_m@buzzed", true)
    SetPedIsDrunk(playerPed, true)
    SetTimecycleModifier("spectator5")
    AnimpostfxPlay("Rampage", 10000001, true)
    ShakeGameplayCam("DRUNK_SHAKE", 1.5)
	
    SetEntityHealth(GetPlayerPed(-1), 200)
--vvvvvvvvvvvvvvvv
    Citizen.Wait(100000)
--^^^^^^^^^^^^^^^^
--Time of effect
--  after wait stop all effects
    SetPedMoveRateOverride(PlayerId(),1.0)
    SetRunSprintMultiplierForPlayer(PlayerId(),1.0)
    SetPedIsDrunk(GetPlayerPed(-1), false)		
    SetPedMotionBlur(playerPed, false)
    ResetPedMovementClipset(GetPlayerPed(-1))
    AnimpostfxStopAll()
    ShakeGameplayCam("DRUNK_SHAKE", 0.0)
    SetTimecycleModifierStrength(0.0)
end)