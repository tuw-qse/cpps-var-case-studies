Attribute "partialProduct": {
  description: "Specifies if the given product is a partial one",
  defaultValue: "false",
  type: "String"
}

Attribute "deltaFile": {
  description: "Specifies the delta file for the V4rdiac configuration",
  defaultValue: "false",
  type: "String"
}

Product "Chassis": {
  name: "Chassis",
  partialProduct: "true"
}

Product "Cabin": {
  name: "Cabin",
  partialProduct: "true"
}

Product "Body": {
  name: "Body",
  isAbstract: true,
  partialProduct: "true"
}

Product "Tank": {
  name: "Tank",
  implements: [ "Body" ],
  excludes: [ "StakeBed", "OpenTop", "Dumper" ],
  partialProduct: "true"
}

Product "Dumper": {
  name: "Dumper",
  implements: [ "Body" ],
  excludes: [ "StakeBed", "OpenTop", "Tank" ],
  partialProduct: "true"
}

Product "StakeBed": {
  name: "StakeBed",
  implements: [ "Body" ],
  excludes: [ "Dumper", "OpenTop", "Tank" ],
  partialProduct: "true"
}

Product "OpenTop": {
  name: "OpenTop",
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
  implements: [ "Truck" ],
  requires: [ "Tank" ],
  excludes: [ "OpenTop", "Dumper", "StakeBed" ]
}

Product "Truck2": {
  name: "Truck2",
  implements: [ "Truck" ],
  requires: [ "OpenTop" ],
  excludes: [ "Tank", "Dumper", "StakeBed" ]
}

Product "Truck3": {
  name: "Truck3",
  implements: [ "Truck" ],
  requires: [ "Dumper" ],
  excludes: [ "OpenTop", "Tank", "StakeBed" ]
}

Product "Truck4": {
  name: "Truck4",
  implements: [ "Truck" ],
  requires: [ "StakeBed" ],
  excludes: [ "OpenTop", "Dumper", "Tank" ]
}

Resource "Robots": {
  name: "Robots",
  isAbstract: true,
}

Resource "KUKA_KR_Agilus_I": {
  name: "KUKA_KR_Agilus",
  implements: [ "Robots" ],
  deltaFile: ""
}

Resource "KUKA_KR_Agilus_II": {
  name: "KUKA_KR_Agilus",
  implements: [ "Robots" ],
  deltaFile: ""
}

Resource "KUKA_IIWA": {
  name: "KUKA_IIWA",
  implements: [ "Robots" ],
  deltaFile: ""
}

Process "InsertChassis": {
  name: "InsertChassis",
  inputs: [ {productId: "Chassis"} ],
  outputs: [ {OP1: {productId: "Chassis", costWeight: 1.0}} ],
  resources: [ {resourceId: "Robots", minCost: 50, maxCost: 100} ]
}

Process "InsertCabin": {
  name: "InsertCabin",
  inputs: [ {productId: "Cabin"} ],
  outputs: [ {OP2: {productId: "Cabin", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertBody": {
  name: "InsertBody",
  isAbstract: true,
  inputs: [ {productId: "Body"} ],
  outputs: [ {OP3: {productId: "Body", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertOpenTop": {
  name: "InsertOpenTop",
  implements: [ "InsertBody" ],
  inputs: [ {productId: "OpenTop"} ],
  outputs: [ {OP4: {productId: "OpenTop", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertDumper": {
  name: "InsertDumper",
  implements: [ "InsertBody" ],
  inputs: [ {productId: "Dumper"} ],
  outputs: [ {OP5: {productId: "Dumper", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertStakeBed": {
  name: "InsertStakeBed",
  implements: [ "InsertBody" ],
  inputs: [ {productId: "StakeBed"} ],
  outputs: [ {OP6: {productId: "StakeBed", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertTank": {
  name: "InsertTank",
  implements: [ "InsertBody" ],
  inputs: [ {productId: "Tank"} ],
  outputs: [ {OP7: {productId: "Tank", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallCabin": {
  name: "InstallCabin",
  requires: [ "InsertChassis", "InsertCabin"],
  inputs: [ {productId: "Chassis"}, {productId: "Cabin"} ],
  outputs: [ {OP8: {productId: "Truck", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallBody": {
  name: "InstallBody",
  isAbstract: true,
  requires: [ "InsertChassis", "InsertBody" ],
  inputs: [ {productId: "Body"}, {productId: "Chassis"} ],
  outputs: [ {OP9: {productId: "Truck", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallOpenTop": {
  name: "InstallOpenTop",
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertBody" ],
  inputs: [ {productId: "OpenTop"}, {productId: "Chassis"} ],
  outputs: [ {OP10: {productId: "Truck", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallDumper": {
  name: "InstallDumper",
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertDumper", "InstallCabin" ],
  inputs: [ {productId: "Dumper"}, {productId: "Chassis"}, {productId: "Cabin"} ],
  outputs: [ {OP11: {productId: "Truck", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallStakeBed": {
  name: "InstallStakeBed",
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertStakeBed" ],
  inputs: [ {productId: "StakeBed"}, {productId: "Chassis"} ],
  outputs: [ {OP12: {productId: "Truck", costWeight: 1.0}} ],
  resources: [
    {resourceId: "KUKA_IIWA", minCost: 50, maxCost: 100}
  ]
}

Process "InstallTank": {
  name: "InstallTank",
  implements: [ "InstallBody" ],
  requires: [ "InsertChassis", "InsertTank" ],
  inputs: [ {productId: "Tank"}, {productId: "Chassis"} ],
  outputs: [ {OP13: {productId: "Truck", costWeight: 1.0}} ],
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Constraint "C1": {
  definition: "InstallStakeBed, KUKA_IIWA -> InsertStakeBed implies KUKA_IIWA"
}
