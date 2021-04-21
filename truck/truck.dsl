Product "Chassis": {
	name: "Chassis",
	isAbstract: false
}

Product "Cabin": {
	name: "Cabin",
	isAbstract: false
}

Product "Body": {
	name: "Body",
	isAbstract: true
}

Product "Tank": {
	name: "Tank",
	isAbstract: false,
	implements: [ "Body" ],
	excludes: [ "StakeBed", "OpenTop", "Dumper" ]
}

Product "Dumper": {
	name: "Dumper",
	isAbstract: false,
	implements: [ "Body" ],
	excludes: [ "StakeBed", "OpenTop", "Tank" ]
}

Product "StakeBed": {
	name: "StakeBed",
	isAbstract: false,
	implements: [ "Body" ],
	excludes: [ "Dumper", "OpenTop", "Tank" ]
}

Product "OpenTop": {
	name: "OpenTop",
	isAbstract: false,
	implements: [ "Body" ],
	excludes: [ "StakeBed", "Dumper", "Tank" ]
}

Product "Truck": {
	name: "Truck",
	isAbstract: true,
	children: [ "Chassis", "Cabin", "Body"],
	requires: [ "Chassis", "Cabin", "Body"]
}

Product "Truck1": {
	name: "Truck1",
	isAbstract: false,
	implements: [ "Truck" ],
	requires: [ "Tank" ],
	excludes: [ "OpenTop", "Dumper", "StakeBed" ]
}

Product "Truck2": {
	name: "Truck2",
	isAbstract: false,
	implements: [ "Truck" ],
	requires: [ "OpenTop" ],
	excludes: [ "Tank", "Dumper", "StakeBed" ]
}

Product "Truck3": {
	name: "Truck3",
	isAbstract: false,
	implements: [ "Truck" ],
	requires: [ "Dumper" ],
	excludes: [ "OpenTop", "Tank", "StakeBed" ]
}

Product "Truck4": {
	name: "Truck4",
	isAbstract: false,
	implements: [ "Truck" ],
	requires: [ "StakeBed" ],
	excludes: [ "OpenTop", "Dumper", "Tank" ]
}