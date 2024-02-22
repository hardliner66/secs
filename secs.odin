package secs


import "core:runtime"

Entity :: distinct u64

Container :: union($T: typeid) {
	T,
}

World :: struct {
	next_id:    u64,
	components: map[typeid]^runtime.Raw_Dynamic_Array,
}

NewWorld :: proc() -> ^World {
	world := new(World)
	world.next_id = 0
	world.components = make(map[typeid]^runtime.Raw_Dynamic_Array)
	return world
}

CreateEntity :: proc(world: ^World) -> Entity {
	current := world.next_id
	world.next_id += 1
	return Entity(current)
}

AddComponent :: proc(world: ^World, entity: Entity, component: $C) {
	typid := typeid_of(C)
	if _, exists := world.components[typid]; !exists {
		world.components[typid] = cast(^runtime.Raw_Dynamic_Array)new([dynamic]Container(C))
	}

	m, _ := world.components[typid]
	assign_at(cast(^[dynamic]Container(C))m, int(entity), component)
}

GetComponent :: proc(world: ^World, entity: Entity, $C: typeid) -> (^C, bool) {
	typid := typeid_of(C)
	if components, exists := world.components[typid]; exists {
		components := cast(^[dynamic]Container(C))components
		if int(entity) < len(components) {

			if c := components[entity]; c == nil {
				return nil, false
			} else {
				return &components[entity].(C), true
			}
		}
	}

	return nil, false
}

RemoveComponent :: proc(world: ^World, entity: Entity, $C: typeid) {
	typid := typeid_of(C)
	if components, exists := &world.components[typid]; exists {
		components := cast(^[dynamic]Container(C))components
		assign_at(components, int(entity), nil)
	}
}
