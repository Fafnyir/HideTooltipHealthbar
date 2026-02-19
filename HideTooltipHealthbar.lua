local function HideHealthBar(self)
    self:Hide()
end

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", function()
    if GameTooltipStatusBar then
        GameTooltipStatusBar:HookScript("OnShow", HideHealthBar)
        GameTooltipStatusBar:Hide() -- Hide immediately in case it's already visible
    end
end)
