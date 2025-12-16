local icons = {{
  icon = "__core__/graphics/icons/alerts/resources-depleted-icon.png",
  icon_size = 64,
}}

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
    icons = icons,
    small_icons = icons,
  },
  {
    type = "selection-tool",
    name = "no-minable-resource-mining-drill-deconstructor",
    subgroup = "tool",
    icons = icons,
    flags = { "only-in-cursor", "not-stackable", "spawnable" },
    hidden = true,
    stack_size = 1,
    select = select,
    alt_select = select,
  },
})
