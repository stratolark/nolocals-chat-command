Citizen.CreateThread(
	function()
		toggleLocals = false
		while true do
			Citizen.Wait(0)
			local playerPed = GetPlayerPed(-1)
			local playerId = PlayerId()

			if toggleLocals then
				--[[ DISABLE VEHICLE GENERATORS IN PLAYER AREA - taken from the internet ]]
				local pos = GetEntityCoords(playerPed)
				RemoveVehiclesFromGeneratorsInArea(
					pos['x'] - 500.0,
					pos['y'] - 500.0,
					pos['z'] - 500.0,
					pos['x'] + 500.0,
					pos['y'] + 500.0,
					pos['z'] + 500.0
				)

				--[[ POLICE DISPATCH SPAWNS OFF - taken from the internet ]]
				for i = 1, 12 do
					EnableDispatchService(i, false)
				end

				SetPlayerWantedLevel(playerId, 0, false)
				SetPlayerWantedLevelNow(playerId, false)
				SetPlayerWantedLevelNoDrop(playerId, 0, false)

				--[[ PED POPULATION OFF ]]
				SetPedPopulationBudget(0)
				SetPedDensityMultiplierThisFrame(0)
				SetScenarioPedDensityMultiplierThisFrame(0, 0)

				--[[ VEHICLE POPULATION OFF ]]
				SetPedPopulationBudget(0)
				SetVehicleDensityMultiplierThisFrame(0)
				SetRandomVehicleDensityMultiplierThisFrame(0)
				SetParkedVehicleDensityMultiplierThisFrame(0)

				--[[ POLICE IGNORE PLAYER ]]
				SetPoliceIgnorePlayer(playerPed, true)
				SetDispatchCopsForPlayer(playerPed, false)
			end
		end
	end
)

RegisterCommand(
	'nolocals',
	function()
		toggleLocals = not toggleLocals
		-- This part below is optional
		if toggleLocals then
			TriggerEvent(
				'chat:addMessage',
				{
					args = {'nolocals ^* Enabled !'},
					color = {0, 255, 0}
				}
			)
		end
		if toggleLocals == false then
			TriggerEvent(
				'chat:addMessage',
				{
					args = {'nolocals ^* Disabled !'},
					color = {255, 0, 0}
				}
			)
		end
	end
)
