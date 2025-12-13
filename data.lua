local select = {
  mode = "deconstruct",
  entity_type_filters = { "mining-drill" },
  tile_filters = { "tile-unknown" },
  cursor_box_type = "entity",
  border_color = { r = 1, g = 1, b = 1 }
}

data:extend({
  {
    type = "shortcut",
    name = "no-minable-resource-mining-drill-deconstructor",
    action = "lua",
    style = "red",
    icon = "__NoMinableResourceMiningDrillDeconstructor__/thumbnail.png",
    icon_size = 64,
    small_icon = "__NoMinableResourceMiningDrillDeconstructor__/thumbnail.png",
    small_icon_size = 64,
  },
  {
    type = "selection-tool",
    name = "no-minable-resource-mining-drill-deconstructor",
    subgroup = "tool",
    icon = "__NoMinableResourceMiningDrillDeconstructor__/thumbnail.png",
    icon_size = 64,
    small_icon = "__NoMinableResourceMiningDrillDeconstructor__/thumbnail.png",
    small_icon_size = 32,
    flags = { "only-in-cursor", "not-stackable", "spawnable" },
    hidden = true,
    stack_size = 1,
    select = select,
    alt_select = select,
  }
})
