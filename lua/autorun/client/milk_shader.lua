-- Milk Shader - A simple custom shader example for Garry's Mod.
-- Copyright (C) 2025 Analog Feelings
-- 
-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:
-- 
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.
-- 
-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

local MilkEnabled = "analogfeelings_milk_enabled"

hook.Add("Initialize", "analogfeelings_milk_shader", function()
	local enabledConvar = CreateClientConVar(MilkEnabled, "0", true, false)

	ToggleEnabled(enabledConvar:GetBool())
end)

hook.Add("AddToolMenuCategories", "analogfeelings_milk_category", function()
	spawnmenu.AddToolCategory("Options", "Milk Shader", "#Milk Shader")
end)

hook.Add("PopulateToolMenu", "analogfeelings_milk_options", function()
	spawnmenu.AddToolMenuOption("Options", "Milk Shader", "Shader Options", "#Shader Options", "", "", function(panel)
		panel:ClearControls()

		local enabledCheckbox = panel:CheckBox("Enable Shader", MilkEnabled)

		function enabledCheckbox:OnChange(value)
			ToggleEnabled(value)
		end
	end)
end)

function ToggleEnabled(enabled)
	if enabled then
		RunConsoleCommand("r_screenoverlay", "effects/shaders/milk")
	else
		RunConsoleCommand("r_screenoverlay", "off")
	end
end