
-----------------------------------------------------------------------------------
local ADDONNAME, THIS = ...;
-----------------------------------------------------------------------------------

-- localize

local SetCVar = SetCVar
local GetInventoryItemCooldown = GetInventoryItemCooldown
local GetTime, print = GetTime, print

-- variables

local usedSleeptime = 0.15
local usedCooldown = 10
local lastUsed = 0

-----------------------------------------------------------------------------------

SLASH_AGIMACROLIZER_ERRORS1 = "/errors";
SLASH_AGIMACROLIZER_ERRORS2 = "/err";
SlashCmdList["AGIMACROLIZER_ERRORS"] = function(value)
    if ( value == "off" ) then
        SetCVar("Sound_EnableSFX", 0)
        UIErrorsFrame:UnregisterEvent("UI_ERROR_MESSAGE")
    elseif ( value == "on" ) then
        SetCVar("Sound_EnableSFX", 1)
        UIErrorsFrame:RegisterEvent("UI_ERROR_MESSAGE")
    end
end

-----------------------------------------------------------------------------------------

SLASH_AGIMACROS_USED1 = "/used";
SlashCmdList["AGIMACROS_USED"] = function(slot)
    if ( lastUsed < GetTime() ) then
        local start, duration, enabled = GetInventoryItemCooldown("player", slot+0)
        if ( enabled == 1 and start == 0 ) then
            lastUsed = GetTime() + usedCooldown
            local _end, inf = GetTime() + usedSleeptime, 6666666
            while ( _end > GetTime() ) do
                inf = inf - 1
                if ( inf < 0 ) then
                    print("MACROHELPER ANTI-FREEZE")
                    break
                end
            end
        end
    end
end

-----------------------------------------------------------------------------------------
