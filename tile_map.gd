extends TileMap

func _ready():
	for map_point in get_used_cells(0):
		var tile_data = get_cell_tile_data(0, map_point)
		tile_data.set_custom_data("coordinate", map_point)
		print("set_custom_data(%s, %s).coordinate = " % [map_point.x, map_point.y], map_point)

	var tile_data2: TileData = get_cell_tile_data(0, Vector2i(0, -1))
	var coordinate = tile_data2.get_custom_data("coordinate")
	assert(coordinate == Vector2i(0, -1))
