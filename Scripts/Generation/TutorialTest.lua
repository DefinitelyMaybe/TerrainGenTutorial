-------------------------------------------------------------------------------
if TutorialTest == nil then
	TutorialTest = EternusEngine.BiomeClass.Subclass("TutorialTest")
end

-------------------------------------------------------------------------------
function TutorialTest:BuildTree()
	local terrain = self:Constant(50)
	local mat1 = self:Material("Dirt")
	local mat2 = self:Material("Dirt Grey")
	local noise1 = self:Simplex((1/64)/6, 8)
	terrain = self:Multiply(terrain, noise1)
	local materials = self:SwitchMaterial(mat1, mat2, noise1)
	return terrain, materials
end

-------------------------------------------------------------------------------
TutorialTest.Lighting = {}
TutorialTest.Objects = 
{
	["Pumpkin Cauldron"] =
	{
		density = 1,
		chance = .9
	}
}
TutorialTest.Clusters = {}

-------------------------------------------------------------------------------
Eternus.ScriptManager:NKRegisterGeneratorClass(TutorialTest)