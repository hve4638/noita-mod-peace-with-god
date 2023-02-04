dofile_once("data/scripts/perks/perk.lua")

function OnPlayerSpawned(player_entity)
    -- Simply spawn the entity in world at the player's location
    local x, y = EntityGetTransform(player_entity)
    local perk = perk_spawn(x, y, "PEACE_WITH_GODS")
    -- To pick up the perk instantly, you can continue:
    perk_pickup(perk, player_entity, EntityGetName(perk), false, false)
end


ModLuaFileAppend( "data/scripts/perks/perk_list.lua", "mods/edit_wands_always/files/remover.lua" )
