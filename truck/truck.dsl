Attribute "partialProduct": {
  description: "Specifies if the given product is a partial one",
  defaultValue: "false",
  type: "String"
}

Attribute "deltaFile": {
  description: "Specifies the delta file for the V4rdiac configuration",
  defaultValue: "",
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
  requires: [ "Chassis", "Cabin", "Body"]
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
  isAbstract: true
}

Resource "KUKA_KR_Agilus": {
  name: "KUKA_KR_Agilus",
  deltaFile: "DKukaAgilus",
  implements: [ "Robots" ]
}

Resource "KUKA_IIWA": {
  name: "KUKA_IIWA",
  deltaFile: "DKukaIIWA",
  implements: [ "Robots" ]
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
  excludes: [ "InsertDumper", "InsertStakeBed", "InsertTank" ],
  inputs: [ {productId: "OpenTop"} ],
  outputs: [ {OP4: {productId: "OpenTop", costWeight: 1.0}} ],
  deltaFile: "DInsertOpenTop",
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertDumper": {
  name: "InsertDumper",
  implements: [ "InsertBody" ],
  excludes: [ "InsertOpenTop", "InsertStakeBed", "InsertTank" ],
  inputs: [ {productId: "Dumper"} ],
  outputs: [ {OP5: {productId: "Dumper", costWeight: 1.0}} ],
  deltaFile: "DInsertDumper",
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertStakeBed": {
  name: "InsertStakeBed",
  implements: [ "InsertBody" ],
  excludes: [ "InsertOpenTop", "InsertDumper", "InsertTank" ],
  inputs: [ {productId: "StakeBed"} ],
  outputs: [ {OP6: {productId: "StakeBed", costWeight: 1.0}} ],
  deltaFile: "DInsertStakeBed",
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InsertTank": {
  name: "InsertTank",
  implements: [ "InsertBody" ],
  excludes: [ "InsertOpenTop", "InsertDumper", "InsertStakeBed" ],
  inputs: [ {productId: "Tank"} ],
  outputs: [ {OP7: {productId: "Tank", costWeight: 1.0}} ],
  deltaFile: "DInsertTank",
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
  excludes: [ "InstallDumper", "InstallStakeBed", "InstallTank" ],
  requires: [ "InsertChassis", "InsertOpenTop" ],
  inputs: [ {productId: "OpenTop"}, {productId: "Chassis"} ],
  outputs: [ {OP10: {productId: "Truck", costWeight: 1.0}} ],
  deltaFile: "DInstallOpenTop",
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallDumper": {
  name: "InstallDumper",
  implements: [ "InstallBody" ],
  excludes: [ "InstallOpenTop", "InstallStakeBed", "InstallTank" ],
  requires: [ "InsertChassis", "InsertDumper", "InstallCabin" ],
  inputs: [ {productId: "Dumper"}, {productId: "Chassis"}, {productId: "Cabin"} ],
  outputs: [ {OP11: {productId: "Truck", costWeight: 1.0}} ],
  deltaFile: "DInstallDumper",
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Process "InstallStakeBed": {
  name: "InstallStakeBed",
  implements: [ "InstallBody" ],
  excludes: [ "InstallOpenTop", "InstallDumper", "InstallTank" ],
  requires: [ "InsertChassis", "InsertStakeBed" ],
  inputs: [ {productId: "StakeBed"}, {productId: "Chassis"} ],
  outputs: [ {OP12: {productId: "Truck", costWeight: 1.0}} ],
  deltaFile: "DInstallStakeBed",
  resources: [
    {resourceId: "KUKA_IIWA", minCost: 50, maxCost: 100}
  ]
}

Process "InstallTank": {
  name: "InstallTank",
  implements: [ "InstallBody" ],
  excludes: [ "InstallOpenTop", "InstallDumper", "InstallStakeBed" ],
  requires: [ "InsertChassis", "InsertTank" ],
  inputs: [ {productId: "Tank"}, {productId: "Chassis"} ],
  outputs: [ {OP13: {productId: "Truck", costWeight: 1.0}} ],
  deltaFile: "DInstallTank",
  resources: [
    {resourceId: "Robots", minCost: 50, maxCost: 100}
  ]
}

Constraint "C1": {
  definition: "InstallStakeBed, KUKA_IIWA -> InstallStakeBed implies KUKA_IIWA"
}

Constraint "C2": {
  definition: "Truck, InstallBody, InstallCabin, InsertChassis -> Truck implies InstallBody and InstallCabin and InsertChassis"
}

Constraint "C3": {
  definition: "Truck1, InstallTank -> Truck1 implies InstallTank"
}