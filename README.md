# Small unoptimized ECS implementation in odin

## Usage

```odin
main :: proc() {
    // create a new ecs world
	world := NewWorld()

    // create an entity with just a position
	AddComponents(world, CreateEntity(world), Position{0, 1})

    // create an entity with position and velocity
	AddComponents(world, CreateEntity(world), Position{0, 1}, Velocity{-0, -1})

    // create an entity with position, velocity and name
	AddComponents(world, CreateEntity(world), Position{0, 1}, Velocity{-0, -1}, Name{"Entity"})

    // create an entity with position, velocity, name and rotation
	AddComponents(
		world,
		CreateEntity(world),
		Position{0, 1},
		Velocity{-0, -1},
		Name{"Entity"},
		Rotation{0},
	)

    // create an entity with position, velocity, name, rotation and enemy
	AddComponents(
		world,
		CreateEntity(world),
		Position{0, 1},
		Velocity{-0, -1},
		Name{"Entity"},
		Rotation{0},
		Enemy{},
	)

    // Iterate over all entities containing position
	Work(world, proc(e: Entity, p: ^Position) {
		fmt.println("Work1: ", e, p)
	})

    // Iterate over all entities containing position and velocity
	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity) {
		fmt.println("Work2: ", e, p, v)
	})

    // Iterate over all entities containing position, velocity and name
	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name) {
		fmt.println("Work3: ", e, p, v, n)
	})

    // Iterate over all entities containing position, velocity, name and rotation
	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name, r: ^Rotation) {
		fmt.println("Work4: ", e, p, v, n, r)
	})

    // Iterate over all entities containing position, velocity, name, rotation and enemy
	Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name, r: ^Rotation, en: ^Enemy) {
		fmt.println("Work5: ", e, p, v, n, r, en)
	})
}
```