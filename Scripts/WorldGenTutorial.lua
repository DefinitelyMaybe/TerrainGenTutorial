-- WorldGenTutorial

-------------------------------------------------------------------------------
if WorldGenTutorial == nil then
	WorldGenTutorial = EternusEngine.ModScriptClass.Subclass("WorldGenTutorial")
end

-------------------------------------------------------------------------------
function WorldGenTutorial:Constructor(  )
end


-------------------------------------------------------------------------------
-- Called once from C++ at engine initialization time
function WorldGenTutorial:Initialize()
end

-------------------------------------------------------------------------------
-- Called from C++ when the current game enters 
function WorldGenTutorial:Enter()	
end

-------------------------------------------------------------------------------
-- Called from C++ when the game leaves it current mode
function WorldGenTutorial:Leave()
end

-------------------------------------------------------------------------------
-- Called from C++ every update tick
function WorldGenTutorial:Process(dt)
end

-------------------------------------------------------------------------------
-- Called from C++ every time the world is saved
function WorldGenTutorial:Save(outData)
end

-------------------------------------------------------------------------------
-- Called from C++ every time the world is restored
function WorldGenTutorial:Restore(inData, version)
end

-------------------------------------------------------------------------------
--[[function WorldGenTutorial:ModifyBiomeData(biomeName, biomeData)
	if (biomeData and biomeData.Clusters) then
		biomeData.Clusters["Orange Tree Cluster"] =
			{
				density = 2,
				chance = 0.2,
				Objects =
				{
					{
						name = "Orange Tree",
						offset = vec3.new(0.0, 0.0, 0.0),
						minScale = 1.5,
						maxScale = 1.75				
					},
					{
						name = "Orange",
						offset = vec3.new(1.0, 0.0, 0.0)
					},
					{
						name = "Tree Sprout",
						offset = vec3.new(7.0, 0.0, 7.0),
						minScale = 0.9,
						maxScale = 1.0
					},		
					{
						name = "Fruitwood Sapling",
						offset = vec3.new(7.0, 0.0, 0.0),
						minScale = 0.55,
						maxScale = 0.65
					}
				}
			}
	end
end]]

EntityFramework:RegisterModScript(WorldGenTutorial)