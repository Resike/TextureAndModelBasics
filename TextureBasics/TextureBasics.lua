function TextureBasics_CreateTexture(texturefile, show)
	-- Create a frame (frame, name)
	local frame = CreateFrame("Frame", nil, UIParent)
	-- Frame strata ("Background", "Low", "Medium", "High", "Dialog", "Fullscreen", "Fullscreen_Dialog", "Tooltip")
	frame:SetFrameStrata("Medium")
	-- Frame strata level (0 - 20)
	frame:SetFrameLevel(0)
	-- Frame width
	frame:SetWidth(128)
	-- Frame height
	frame:SetHeight(128)
	-- Frame alpha
	frame:SetAlpha(0.90)
	-- Frame oosition
	frame:SetPoint("CENTER", 0, 0)
	-- Create a texture on the frame (name, layer)
	local texture = frame:CreateTexture("Texture", "Background")
	-- Texture file
	texture:SetTexture(texturefile)
	-- Texture width
	texture:SetWidth(128)
	-- Texture height
	texture:SetHeight(128)
	-- Blend mode ("Add", "Alphakey", "Blend", "Disable", "Mod")
	texture:SetBlendMode("Disable")
	-- Texture strata ("Background", "Border", "Artwork", "Overlay") and Sublevel (-8 - 7)
	texture:SetDrawLayer("Background", 0)
	-- Texture rotation (0 - 360) (Note, not all textures like to be rotated)
	texture:SetRotation(math.rad(15))
	-- Coloring (r, b, g, a)
	texture:SetVertexColor(1, 0, 0, 0.75)
	-- If you rotate it you need multiply the frame's width and height by sqrt(2)
	frame:SetWidth(sqrt(2) * texture:GetWidth())
	frame:SetHeight(sqrt(2) * texture:GetHeight())
	-- Mirror it
	local ULx, ULy, LLx, LLy, URx, URy, LRx, LRy = texture:GetTexCoord()
	--texture:SetTexCoord(URx, URy, LRx, LRy, ULx, ULy, LLx, LLy) -- Inverse X
	--texture:SetTexCoord(LLx, LLy, ULx, ULy, LRx, LRy, URx, URy) -- Inverse Y
	--texture:SetTexCoord(LRx, LRy, URx, URy, LLx, LLy, ULx, ULy) -- Inverse XY
	texture:SetTexCoord(ULx, ULy, LLx, LLy, URx, URy, LRx, LRy) -- Normal
	-- Put the texture on the frame
	texture:SetAllPoints(frame)
	-- Show/Hide frame
	if show == true then
		frame:Show()
	else
		frame:Hide()
	end
end

--TextureBasics_CreateTexture("Interface\\PVPFrame\\Icons\\PVP-Banner-Emblem-10", true)

function ModelBasics_CreateModel(modelfile, show)
	-- Create a frame (frame, name, parent)
	local frame = CreateFrame("Frame", nil, UIParent)
	-- Frame Position
	frame:SetPoint("CENTER", 0, 0)
	-- Frame width
	frame:SetWidth(512)
	-- Frame height
	frame:SetHeight(512)
	-- Frame alpha
	frame:SetAlpha(1)
	-- Create a model (model, name, parent)
	local model = CreateFrame("PlayerModel", nil, frame)
	-- Model file
	model:SetModel(modelfile)
	-- Model position on the frame (z, x, y)
	model:SetPosition(0, 0, 0)
	-- Model rotation
	model:SetRotation(math.rad(0))
	-- Model alpha
	model:SetAlpha(0.85)
	-- Put the model on the frame
	model:SetAllPoints(frame)
	-- Show/Hide frame
	if show == true then
		frame:Show()
	else
		frame:Hide()
	end
end

ModelBasics_CreateModel("Creature/Alexstrasza/LadyAlexstrasa.m2", true)