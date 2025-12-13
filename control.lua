script.on_event(defines.events.on_lua_shortcut,
  function(event)
    local player = game.players[event.player_index]
    if event.prototype_name == "no-minable-resource-mining-drill-deconstructor" then
      if player.clear_cursor() then
        player.cursor_stack.set_stack({ name = "no-minable-resource-mining-drill-deconstructor" })
      end
    end
  end)

script.on_event(defines.events.on_player_selected_area, function(event)
  if event.item == "no-minable-resource-mining-drill-deconstructor" then
    for _, entity in ipairs(event.entities)
    do
      if entity.type == "mining-drill" and entity.status == defines.entity_status.no_minable_resources
      then
        entity.order_deconstruction(event.player_index)
      end
    end
  end
end)
