Attribute "partialProduct": {
  description: "Specifies if the given product is a partial one",
  defaultValue: "false",
  type: "String"
}

Product "Chassis": {
  name: "Chassis",
  isAbstract: false,
  partialProduct: "true"
}

Product "Cabin": {
  name: "Cabin",
  isAbstract: false,
  partialProduct: "true"
}

Product "Body": {
  name: "Body",
  isAbstract: true,
  partialProduct: "true"
}

Product "Tank": {
  name: "Tank",
  isAbstract: false,
  implements: [ "Body" ],
  excludes: [ "StakeBed", "OpenTop", "Dumper" ],
  partialProduct: "true"
}

Product "Dumper": {
  name: "Dumper",
  isAbstract: false,
  implements: [ "Body" ],
  excludes: [ "StakeBed", "OpenTop", "Tank" ],
  partialProduct: "true"
}

Product "StakeBed": {
  name: "StakeBed",
  isAbstract: false,
  implements: [ "Body" ],
  excludes: [ "Dumper", "OpenTop", "Tank" ],
  partialProduct: "true"
}

Product "OpenTop": {
  name: "OpenTop",
  isAbstract: false,
  implements: [ "Body" ],
  excludes: [ "StakeBed", "Dumper", "Tank" ],
  partialProduct: "true"
}

Product "Truck": {
  name: "Truck",
  isAbstract: true,
  requires: [ "Chassis", "Cabin", "Body"],
  partialProduct: "true"
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

Process "InsertChassis": {
  name: "InsertChassis",
  isAbstract: false,
  inputs: [ {productId: "Chassis"} ],
  outputs: [ {OP1: {productId: "Chassis", costWeight: 1.0}} ]
}

Process "InsertCabin": {
  name: "InsertCabin",
  isAbstract: false,
  inputs: [ {productId: "Cabin"} ],
  outputs: [ {OP2: {productId: "Cabin", costWeight: 1.0}} ]
}

Process "InsertBody": {
  name: "InsertBody",
  isAbstract: true,
  inputs: [ {productId: "Body"} ],
  outputs: [ {OP3: {productId: "Body", costWeight: 1.0}} ]
}

Process "InsertOpenTop": {
  name: "InsertOpenTop",
  isAbstract: false,
  implements: [ "InsertBody" ],
  inputs: [ {productId: "OpenTop"} ],
  outputs: [ {OP4: {productId: "OpenTop", costWeight: 1.0}} ]
}

Process "InsertDumper": {
  name: "InsertDumper",
  isAbstract: false,
  implements: [ "InsertBody" ],
  inputs: [ {productId: "Dumper"} ],
  outputs: [ {OP5: {productId: "Dumper", costWeight: 1.0}} ]
}

Process "InsertStakeBed": {
  name: "InsertStakeBed",
  isAbstract: false,
  implements: [ "InsertBody" ],
  inputs: [ {productId: "StakeBed"} ],
  outputs: [ {OP6: {productId: "StakeBed", costWeight: 1.0}} ]
}

Process "InsertTank": {
  name: "InsertTank",
  isAbstract: false,
  implements: [ "InsertBody" ],
  inputs: [ {productId: "Tank"} ],
  outputs: [ {OP7: {productId: "Tank", costWeight: 1.0}} ]
}

Process "InstallCabin": {
  name: "InstallCabin",
  isAbstract: false,
  requires: [ "InsertChassis", "InsertCabin"],
  inputs: [ {productId: "Chassis"}, {productId: "Cabin"} ],
  outputs: [ {OP8: {productId: "Truck", costWeight: 1.0}} ]
}

Process "InstallBody": {
  name: "InstallBody",
  isAbstract: true,
  requires: [ "InsertChassis", "InsertBody" ],
  inputs: [ {productId: "Body"}, {productId: "Chassis"} ],
  outputs: [ {OP9: {productId: "Truck", costWeight: 1.0}} ]
}

Process "InstallOpenTop": {
  name: "InstallOpenTop",
  isAbstract: false,
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertBody" ],
  inputs: [ {productId: "OpenTop"}, {productId: "Chassis"} ],
  outputs: [ {OP10: {productId: "Truck", costWeight: 1.0}} ]
}

Process "InstallDumper": {
  name: "InstallDumper",
  isAbstract: false,
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertDumper", "InstallCabin" ],
  inputs: [ {productId: "Dumper"}, {productId: "Chassis"}, {productId: "Cabin"} ],
  outputs: [ {OP11: {productId: "Truck", costWeight: 1.0}} ]
}

Process "InstallStakeBed": {
  name: "InstallStakeBed",
  isAbstract: false,
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertStakeBed" ],
  inputs: [ {productId: "StakeBed"}, {productId: "Chassis"} ],
  outputs: [ {OP12: {productId: "Truck", costWeight: 1.0}} ]
}

Process "InstallTank": {
  name: "InstallTank",
  isAbstract: false,
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertTank" ],
  inputs: [ {productId: "Tank"}, {productId: "Chassis"} ],
  outputs: [ {OP13: {productId: "Truck", costWeight: 1.0}} ]
}
