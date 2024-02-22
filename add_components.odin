package ecs

AddComponents1 :: proc(world: ^World, entity: Entity, component: $C) {
	AddComponent(world, entity, component)
}

AddComponents2 :: proc(world: ^World, entity: Entity, c1: $C1, c2: $C2) {
	AddComponents1(world, entity, c1)
	AddComponent(world, entity, c2)
}

AddComponents3 :: proc(world: ^World, entity: Entity, c1: $C1, c2: $C2, c3: $C3) {
	AddComponents2(world, entity, c1, c2)
	AddComponent(world, entity, c3)
}

AddComponents4 :: proc(world: ^World, entity: Entity, c1: $C1, c2: $C2, c3: $C3, c4: $C4) {
	AddComponents3(world, entity, c1, c2, c3)
	AddComponent(world, entity, c4)
}

AddComponents5 :: proc(
	world: ^World,
	entity: Entity,
	c1: $C1,
	c2: $C2,
	c3: $C3,
	c4: $C4,
	c5: $C5,
) {
	AddComponents4(world, entity, c1, c2, c3, c4)
	AddComponent(world, entity, c5)
}

AddComponents6 :: proc(
	world: ^World,
	entity: Entity,
	c1: $C1,
	c2: $C2,
	c3: $C3,
	c4: $C4,
	c5: $C5,
	c6: $C6,
) {
	AddComponents5(world, entity, c1, c2, c3, c4, c5)
	AddComponent(world, entity, c6)
}

AddComponents7 :: proc(
	world: ^World,
	entity: Entity,
	c1: $C1,
	c2: $C2,
	c3: $C3,
	c4: $C4,
	c5: $C5,
	c6: $C6,
	c7: $C7,
) {
	AddComponents6(world, entity, c1, c2, c3, c4, c5, c6)
	AddComponent(world, entity, c7)
}

AddComponents8 :: proc(
	world: ^World,
	entity: Entity,
	c1: $C1,
	c2: $C2,
	c3: $C3,
	c4: $C4,
	c5: $C5,
	c6: $C6,
	c7: $C7,
	c8: $C8,
) {
	AddComponents7(world, entity, c1, c2, c3, c4, c5, c6, c7)
	AddComponent(world, entity, c8)
}

AddComponents9 :: proc(
	world: ^World,
	entity: Entity,
	c1: $C1,
	c2: $C2,
	c3: $C3,
	c4: $C4,
	c5: $C5,
	c6: $C6,
	c7: $C7,
	c8: $C8,
	c9: $C9,
) {
	AddComponents8(world, entity, c1, c2, c3, c4, c5, c6, c7, c8)
	AddComponent(world, entity, c9)
}

AddComponents10 :: proc(
	world: ^World,
	entity: Entity,
	c1: $C1,
	c2: $C2,
	c3: $C3,
	c4: $C4,
	c5: $C5,
	c6: $C6,
	c7: $C7,
	c8: $C8,
	c9: $C9,
	c10: $C10,
) {
	AddComponents9(world, entity, c1, c2, c3, c4, c5, c6, c7, c8, c9)
	AddComponent(world, entity, c10)
}

AddComponents :: proc {
	AddComponents1,
	AddComponents2,
	AddComponents3,
	AddComponents4,
	AddComponents5,
	AddComponents6,
	AddComponents7,
	AddComponents8,
	AddComponents9,
	AddComponents10,
}
