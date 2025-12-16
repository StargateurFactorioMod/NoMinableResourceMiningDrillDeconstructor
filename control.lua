---@diagnostic disable: need-check-nil

script.on_event(defines.events.on_lua_shortcut, function(event)
  if event.prototype_name ~= "no-minable-resource-mining-drill-deconstructor" then
    return
  end

  local player = game.get_player(event.player_index)
  if player.clear_cursor() then
    player.cursor_stack.set_stack({ name = "no-minable-resource-mining-drill-deconstructor" })
  end
end)

-- normal
script.on_event(defines.events.on_player_selected_area, function(event)
  if event.item ~= "no-minable-resource-mining-drill-deconstructor" then
    return
  end

  local player = game.get_player(event.player_index)
  for _, entity in ipairs(event.entities) do
    if entity.status == defines.entity_status.no_minable_resources then
      entity.order_deconstruction(player.force, player)
    end
  end
end)

-- alt normal
script.on_event(defines.events.on_player_alt_selected_area, function(event)
  if event.item ~= "no-minable-resource-mining-drill-deconstructor" then
    return
  end

  local player = game.get_player(event.player_index)
  for _, entity in ipairs(event.entities) do
    if not (entity.status == defines.entity_status.no_minable_resources) then
      entity.order_deconstruction(player.force, player)
    end
  end
end)
