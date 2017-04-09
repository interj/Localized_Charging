require('volt_util')

data:extend({
	{
		type = "item",
		name = "localized-charging-pole",
		localised_name = {'entity-name.localized-charging-pole'},
		icon = "__Localized_Charging__/graphics/icons/localized-charging-pole.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy-pipe-distribution",
		order = "a[energy]-b[localized-charging-pole]",
		place_result = "localized-charging-pole",
		stack_size = 10
	},
	clone_existing_data(data.raw['item-with-entity-data']['diesel-locomotive'], {
		name = "electric-locomotive",
		localised_name={'vehicles.electric-locomotive'},
		icon = "__Localized_Charging__/graphics/icons/electric-locomotive.png",
		order = "a[train-system]-f[electric-locomotive]",
		place_result = "electric-locomotive",
	}),
	
	{
		type = "item",
		name = "test-battery-please-ignore",
		icon = "__base__/graphics/icons/battery-mk2-equipment.png",
		placed_as_equipment_result = "test-battery-please-ignore",
		flags = {"goes-to-main-inventory"},
		subgroup = "equipment",
		order = "c[battery]-b[test-battery-please-ignore]",
		stack_size = 50,
		default_request_amount = 10
	},
	{
		type = "battery-equipment",
		name = "test-battery-please-ignore",
		sprite =
		{
			filename = "__base__/graphics/equipment/battery-mk2-equipment.png",
			width = 32,
			height = 64,
			priority = "medium"
		},
		shape =
		{
			width = 1,
			height = 2,
			type = "full"
		},
		energy_source =
		{
			type = "electric",
			buffer_capacity = "30GJ",
			input_flow_limit = "1GW",
			output_flow_limit = "1GW",
			usage_priority = "terciary"
		},
		categories = {"armor"}
	},
})