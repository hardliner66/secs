package ecs

Work1 :: proc(world: ^World, p: proc(_: Entity, _: ^$C)) {
	components := cast(^[dynamic]Container(C))world.components[typeid_of(C)]
	for c, e in components {
		if c != nil {
			p(Entity(e), &c.(C))
		}
	}
}

Work2 :: proc(world: ^World, p: proc(_: Entity, _: ^$C1, _: ^$C2)) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	for c1, e in cs1 {
		c2 := cs2[e]
		if c1 != nil && c2 != nil {
			p(Entity(e), &c1.(C1), &c2.(C2))
		}
	}
}

Work3 :: proc(world: ^World, p: proc(_: Entity, _: ^$C1, _: ^$C2, _: ^$C3)) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		if c1 != nil && c2 != nil && c3 != nil {
			p(Entity(e), &c1.(C1), &c2.(C2), &c3.(C3))
		}
	}
}


Work4 :: proc(world: ^World, p: proc(_: Entity, _: ^$C1, _: ^$C2, _: ^$C3, _: ^$C4)) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		if c1 != nil && c2 != nil && c3 != nil && c4 != nil {
			p(Entity(e), &c1.(C1), &c2.(C2), &c3.(C3), &c4.(C4))
		}
	}
}

Work5 :: proc(world: ^World, p: proc(_: Entity, _: ^$C1, _: ^$C2, _: ^$C3, _: ^$C4, _: ^$C5)) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	cs5 := cast(^[dynamic]Container(C5))world.components[typeid_of(C5)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		c5 := cs5[e]
		if c1 != nil && c2 != nil && c3 != nil && c4 != nil && c5 != nil {
			p(Entity(e), &c1.(C1), &c2.(C2), &c3.(C3), &c4.(C4), &c5.(C5))
		}
	}
}

Work6 :: proc(
	world: ^World,
	p: proc(_: Entity, _: ^$C1, _: ^$C2, _: ^$C3, _: ^$C4, _: ^$C5, _: ^$C6),
) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	cs5 := cast(^[dynamic]Container(C5))world.components[typeid_of(C5)]
	cs6 := cast(^[dynamic]Container(C6))world.components[typeid_of(C6)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		c5 := cs5[e]
		c6 := cs6[e]
		if c1 != nil && c2 != nil && c3 != nil && c4 != nil && c5 != nil && c6 != nil {
			p(Entity(e), &c1.(C1), &c2.(C2), &c3.(C3), &c4.(C4), &c5.(C5), &c6.(C6))
		}
	}
}

Work7 :: proc(
	world: ^World,
	p: proc(_: Entity, _: ^$C1, _: ^$C2, _: ^$C3, _: ^$C4, _: ^$C5, _: ^$C6, _: ^$C7),
) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	cs5 := cast(^[dynamic]Container(C5))world.components[typeid_of(C5)]
	cs6 := cast(^[dynamic]Container(C6))world.components[typeid_of(C6)]
	cs7 := cast(^[dynamic]Container(C7))world.components[typeid_of(C7)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		c5 := cs5[e]
		c6 := cs6[e]
		c7 := cs7[e]
		if c1 != nil &&
		   c2 != nil &&
		   c3 != nil &&
		   c4 != nil &&
		   c5 != nil &&
		   c6 != nil &&
		   c7 != nil {
			p(Entity(e), &c1.(C1), &c2.(C2), &c3.(C3), &c4.(C4), &c5.(C5), &c6.(C6), &c7.(C7))
		}
	}
}

Work8 :: proc(
	world: ^World,
	p: proc(_: Entity, _: ^$C1, _: ^$C2, _: ^$C3, _: ^$C4, _: ^$C5, _: ^$C6, _: ^$C7, _: ^$C8),
) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	cs5 := cast(^[dynamic]Container(C5))world.components[typeid_of(C5)]
	cs6 := cast(^[dynamic]Container(C6))world.components[typeid_of(C6)]
	cs7 := cast(^[dynamic]Container(C7))world.components[typeid_of(C7)]
	cs8 := cast(^[dynamic]Container(C8))world.components[typeid_of(C8)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		c5 := cs5[e]
		c6 := cs6[e]
		c7 := cs7[e]
		c8 := cs8[e]
		if c1 != nil &&
		   c2 != nil &&
		   c3 != nil &&
		   c4 != nil &&
		   c5 != nil &&
		   c6 != nil &&
		   c7 != nil &&
		   c8 != nil {
			p(
				Entity(e),
				&c1.(C1),
				&c2.(C2),
				&c3.(C3),
				&c4.(C4),
				&c5.(C5),
				&c6.(C6),
				&c7.(C7),
				&c8.(C8),
			)
		}
	}
}

Work9 :: proc(
	world: ^World,
	p: proc(
		_: Entity,
		_: ^$C1,
		_: ^$C2,
		_: ^$C3,
		_: ^$C4,
		_: ^$C5,
		_: ^$C6,
		_: ^$C7,
		_: ^$C8,
		_: ^$C9,
	),
) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	cs5 := cast(^[dynamic]Container(C5))world.components[typeid_of(C5)]
	cs6 := cast(^[dynamic]Container(C6))world.components[typeid_of(C6)]
	cs7 := cast(^[dynamic]Container(C7))world.components[typeid_of(C7)]
	cs8 := cast(^[dynamic]Container(C8))world.components[typeid_of(C8)]
	cs9 := cast(^[dynamic]Container(C9))world.components[typeid_of(C9)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		c5 := cs5[e]
		c6 := cs6[e]
		c7 := cs7[e]
		c8 := cs8[e]
		c9 := cs9[e]
		if c1 != nil &&
		   c2 != nil &&
		   c3 != nil &&
		   c4 != nil &&
		   c5 != nil &&
		   c6 != nil &&
		   c7 != nil &&
		   c8 != nil &&
		   c9 != nil {
			p(
				Entity(e),
				&c1.(C1),
				&c2.(C2),
				&c3.(C3),
				&c4.(C4),
				&c5.(C5),
				&c6.(C6),
				&c7.(C7),
				&c8.(C8),
				&c9.(C9),
			)
		}
	}
}

Work10 :: proc(
	world: ^World,
	p: proc(
		_: Entity,
		_: ^$C1,
		_: ^$C2,
		_: ^$C3,
		_: ^$C4,
		_: ^$C5,
		_: ^$C6,
		_: ^$C7,
		_: ^$C8,
		_: ^$C9,
		_: ^$C10,
	),
) {
	cs1 := cast(^[dynamic]Container(C1))world.components[typeid_of(C1)]
	cs2 := cast(^[dynamic]Container(C2))world.components[typeid_of(C2)]
	cs3 := cast(^[dynamic]Container(C3))world.components[typeid_of(C3)]
	cs4 := cast(^[dynamic]Container(C4))world.components[typeid_of(C4)]
	cs5 := cast(^[dynamic]Container(C5))world.components[typeid_of(C5)]
	cs6 := cast(^[dynamic]Container(C6))world.components[typeid_of(C6)]
	cs7 := cast(^[dynamic]Container(C7))world.components[typeid_of(C7)]
	cs8 := cast(^[dynamic]Container(C8))world.components[typeid_of(C8)]
	cs9 := cast(^[dynamic]Container(C9))world.components[typeid_of(C9)]
	cs10 := cast(^[dynamic]Container(C10))world.components[typeid_of(C10)]
	for c1, e in cs1 {
		c2 := cs2[e]
		c3 := cs3[e]
		c4 := cs4[e]
		c5 := cs5[e]
		c6 := cs6[e]
		c7 := cs7[e]
		c8 := cs8[e]
		c9 := cs9[e]
		c10 := cs10[e]
		if c1 != nil &&
		   c2 != nil &&
		   c3 != nil &&
		   c4 != nil &&
		   c5 != nil &&
		   c6 != nil &&
		   c7 != nil &&
		   c8 != nil &&
		   c9 != nil &&
		   c10 != nil {
			p(
				Entity(e),
				&c1.(C1),
				&c2.(C2),
				&c3.(C3),
				&c4.(C4),
				&c5.(C5),
				&c6.(C6),
				&c7.(C7),
				&c8.(C8),
				&c9.(C9),
				&c10.(C10),
			)
		}
	}
}

Work :: proc {
	Work1,
	Work2,
	Work3,
	Work4,
	Work5,
	Work6,
	Work7,
	Work8,
	Work9,
	Work10,
}
