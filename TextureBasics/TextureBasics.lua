-- Create a frame
local f = CreateFrame("frame", "TextureBasics")
-- Frame Strata ("Background", "Low", "Medium", "High", "Dialog", "Fullscreen", "Fullscreen_Dialog", "Tooltip")
f:SetFrameStrata("Medium")
-- Frame Strata level (0 - 20)
f:SetFrameLevel(0)
-- Frame Width
f:SetWidth(128)
-- Frame Height
f:SetHeight(128)
-- Frame Alpha
f:SetAlpha(0.90)
-- Frame Position
f:SetPoint("CENTER", 0, 0);

function TextureBasics_CreateTexture(texture)
	-- Create a texture on the frame
	local t = f:CreateTexture("Texture", "Background")
	-- Set the texture
	t:SetTexture(texture)
	-- Texture Width
	t:SetWidth(128)
	-- Texture Height
	t:SetHeight(128)
	-- Blend Mode ("Add", "Alphakey", "Blend", "Disable", "Mod")
	t:SetBlendMode("Disable")
	-- Texture Strata ("Background", "Border", "Artwork", "Overlay") and Sublevel (-8 - 7)
	t:SetDrawLayer("Background", 0)
	-- Texture Rotation (0 - 360) (Note, not all textures like to be rotated)
	t:SetRotation(math.rad(15))
	-- Coloring (r, b, g, a)
	t:SetVertexColor(1, 0, 0, 0.75)
	-- If you rotate it you need multiply the frame's width and height by sqrt(2)
	f:SetWidth(sqrt(2) * t:GetWidth())
	f:SetHeight(sqrt(2) * t:GetHeight())
	-- Put the texture on the frame
	t:SetAllPoints(f)
	-- Show it
	f:Show()
end

TextureBasics_CreateTexture("Interface\\PVPFrame\\Icons\\PVP-Banner-Emblem-10")