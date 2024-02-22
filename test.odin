package secs

import "core:fmt"

@(private)
Position :: struct {
	x: f32,
	y: f32,
}

@(private)
Velocity :: struct {
	x: f32,
	y: f32,
}

@(private)
Name :: struct {
	name: string,
}

@(private)
Rotation :: struct {
	degrees: f32,
}

@(private)
Enemy :: struct {}

@(private)
main :: proc() {
	world := NewWorld()
	defer {
		for c in world.components {
			free(world.components[c])
		}
	}
	defer delete(world.components)
	defer free(world)

	AddComponents(world, CreateEntity(world), Position{0, 1})
	AddComponents(world, CreateEntity(world), Position{0, 1}, Velocity{-0, -1})
	AddComponents(world, CreateEntity(world), Position{0, 1}, Velocity{-0, -1}, Name{"Entity"})
	AddComponents(
		world,
		CreateEntity(world),
		Position{0, 1},
		Velocity{-0, -1},
		Name{"Entity"},
		Rotation{0},
	)
	AddComponents(
		world,
		CreateEntity(world),
		Position{0, 1},
		Velocity{-0, -1},
		Name{"Entity"},
		Rotation{0},
		Enemy{},
	)

	Work(world, proc(e: Entity, p: ^Position) {
		fmt.println("Work1: ", e, p)
	})

	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity) {
		fmt.println("Work2: ", e, p, v)
	})

	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name) {
		fmt.println("Work3: ", e, p, v, n)
	})

	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name, r: ^Rotation) {
		fmt.println("Work4: ", e, p, v, n, r)
	})

	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name, r: ^Rotation, en: ^Enemy) {
		fmt.println("Work5: ", e, p, v, n, r, en)
	})
}
