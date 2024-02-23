# SECS (SmallECS)
SECS is a small ecs implemented in odin

## Usage

```odin
main :: proc() {
	// create a new ecs world
	world := ecs.NewWorld()

	// create an entity with just a position
	ecs.AddComponents(world, CreateEntity(world), Position{0, 1})

	// create an entity with position and velocity
	ecs.AddComponents(world, CreateEntity(world), Position{0, 1}, Velocity{-0, -1})

	// create an entity with position, velocity and name
	ecs.AddComponents(world, CreateEntity(world), Position{0, 1}, Velocity{-0, -1}, Name{"Entity"})

	// create an entity with position, velocity, name and rotation
	ecs.AddComponents(
		world,
		CreateEntity(world),
		Position{0, 1},
		Velocity{-0, -1},
		Name{"Entity"},
		Rotation{0},
	)

	// create an entity with position, velocity, name, rotation and enemy
	ecs.AddComponents(
		world,
		CreateEntity(world),
		Position{0, 1},
		Velocity{-0, -1},
		Name{"Entity"},
		Rotation{0},
		Enemy{},
	)

	// Iterate over all entities containing position
	ecs.Work(world, proc(e: Entity, p: ^Position) {
		fmt.println("Work1: ", e, p)
	})

	// Iterate over all entities containing position and velocity
	ecs.Work(world, proc(e: Entity, p: ^Position, v: ^Velocity) {
		fmt.println("Work2: ", e, p, v)
	})

	// Iterate over all entities containing position, velocity and name
	ecs.Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name) {
		fmt.println("Work3: ", e, p, v, n)
	})

	// Iterate over all entities containing position, velocity, name and rotation
	ecs.Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name, r: ^Rotation) {
		fmt.println("Work4: ", e, p, v, n, r)
	})

	// Iterate over all entities containing position, velocity, name, rotation and enemy
	ecs.Work(world, proc(e: Entity, p: ^Position, v: ^Velocity, n: ^Name, r: ^Rotation, en: ^Enemy) {
		fmt.println("Work5: ", e, p, v, n, r, en)
	})
}
```
