Attribute "length": {
  description: "Length of an object in mm",
  defaultValue: 1.0,
  type: "Number",
  unit: "mm"
}

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

Product "Fork": {
  name: "Fork",
  isAbstract: true,
  partialProduct: "true"
}

Product "Fork3": {
  name: "Fork 3",
  length: 30,
  implements: [ "Fork" ],
  requires: ["Fork5"],
  partialProduct: "true"
}
Product "Fork4": {
  name: "Fork 4",
  length: 30,
  implements: [ "Fork" ],
  requires: ["Fork5"],
  partialProduct: "true"
}
Product "Fork5": {
  name: "Fork 5",
  implements: [ "Fork" ],
  length: 50,
  partialProduct: "true"
}

Product "Pipe": {
  name: "Abstract Pipe",
  isAbstract: true,
  partialProduct: "true"
}
Product "Pipe2": {
  name: "Pipe 2",
  implements: ["Pipe"],
  excludes: [ "Pipe3", "Pipe8" ],
  length: 20,
  partialProduct: "true"
}
Product "Pipe3": {
  name: "Pipe 3",
  implements: ["Pipe"],
  excludes: [ "Pipe2", "Pipe8" ],
  length: 30,
  partialProduct: "true"
}
Product "Pipe8": {
  name: "Pipe 8",
  implements: ["Pipe"],
  excludes: [ "Pipe3", "Pipe2" ],
  length: 30,
  partialProduct: "true"
}

Product "Lock": {
  name: "Abstract Lock",
  isAbstract: true,
  requires: ["Pipe"],
  partialProduct: "true"
}

Product "Lock1": {
  name: "Lock 1",
  implements: ["Lock"],
  excludes: [ "Lock2", "Lock3" ],
  length: 30,
  partialProduct: "true"
}

Product "Lock2": {
  name: "Lock 2",
  implements: ["Lock"],
  excludes: [ "Lock1", "Lock3" ],
  length: 20,
  partialProduct: "true"
}

Product "Lock3": {
  name: "Lock 3",
  implements: ["Lock"],
  excludes: [ "Lock1", "Lock2" ],
  length: 30,
  partialProduct: "true"
}

Product "Barrel": {
  name: "Barrel",
  isAbstract: true,
  partialProduct: "true"
}

Product "Barrel1_1": {
  name: "Barrel 1_1",
  implements: [ "Barrel" ],
  length:50,
  requires: ["Pipe"],
  partialProduct: "true"
}

Product "Barrel1_2": {
  name: "Barrel 1_2",
  implements: [ "Barrel" ],
  length:50,
  requires: ["Pipe"],
  partialProduct: "true"
}

Product "Screw": {
  name:"Screw",
  requires: ["Ring1", "Jack1"],
  partialProduct: "true"
}

Product "Ring1": {
  name: "Ring 1",
  requires: ["Pipe"],
  partialProduct: "true"
}

Product "O_Ring": {
  name: "O_Ring",
  requires: ["Ring1", "Jack1"],
  partialProduct: "true"
}

Product "Jack1": {
  name: "Jack 1",
  requires: ["Pipe"],
  partialProduct: "true"
}

Product "ForkProduct": {
  name: "ForkProduct",
  isAbstract: true,
  children: [ "Barrel1_1", "Screw", "Jack1", "Ring1", "O_Ring", "Fork3", "Fork4", "Fork5", "Pipe", "Lock"],
  requires: [ "Barrel1_1", "Screw", "Jack1", "Ring1", "O_Ring", "Fork3", "Fork4", "Fork5", "Pipe", "Lock"],
}
Product "Fork_13": {
  name: "Fork 13",
  implements: ["ForkProduct"],
  requires: ["Pipe8", "Lock3", "Barrel1_2"]
}
Product "Fork_2R": {
  name: "Fork 2R",
  implements: ["ForkProduct"],
  requires: ["Pipe3", "Lock2"]
}
Product "Fork_46": {
  name: "Fork 46",
  implements: ["ForkProduct"],
  requires: ["Pipe3", "Lock1"]
}
Product "Fork_57": {
  name: "Fork 57",
  implements: ["ForkProduct"],
  requires: ["Pipe2", "Lock1", "Barrel1_2"]
}

Resource "Linefeeds": {
  name: "Linefeeds",
  isAbstract: true
}

Resource "LF_3": {
  name: "LF_3",
  deltaFile: "DLF_3(desiredCardinality)",
  implements: [ "Linefeeds" ] 
}

Resource "LF_4": {
  name: "LF_4",
  deltaFile: "DLF_4(desiredCardinality)",
  implements: [ "Linefeeds" ] 
}

Resource "WeldingRobots": {
  name: "WeldingRobots",
  isAbstract: true
}

Resource "LaserWeldingRobots": {
  name: "LaserWeldingRobots",
  isAbstract: true,
  implements: [ "WeldingRobots" ]
}

Resource "LaserWeldingRobot_01":{
  name: "LaserWeldingRobot_01",
  deltaFile: "DLaserWeldingRobot01(desiredCardinality)",
  implements: [ "LaserWeldingRobots" ]
}

Resource "UltrasonicWeldingRobots": {
  name: "UltrasonicWeldingRobots",
  isAbstract: true,
  implements: [ "WeldingRobots" ]
}

Resource "UltrasonicWeldingRobot_16":{
  name: "UltrasonicWeldingRobot_16",
  deltaFile: "DUltrasonicWeldingRobot16(desiredCardinality)",
  implements: [ "UltrasonicWeldingRobots" ]
}

Resource "PressingRobots": {
  name: "PressingRobots",
  isAbstract: true
}

Resource "SmallPartsPressingRobots": {
  name: "SmallPartsPressingRobots",
  isAbstract: true,
  implements: [ "PressingRobots" ]
}

Resource "MediumPartsPressingRobots": {
  name: "MediumPartsPressingRobots",
  isAbstract: true,
  implements: [ "PressingRobots" ]
}

Resource "PR_04": {
  name: "PR_04",
  deltaFile: "DPR_04(desiredCardinality)",
  implements: [ "MediumPartsPressingRobots" ]
}

Resource "PR_05": {
  name: "PR_05",
  deltaFile: "DPR_05(desiredCardinality)",
  implements: [ "SmallPartsPressingRobots" ]
}

Resource "PR_12": {
  name: "PR_12",
  deltaFile: "DPR_12(desiredCardinality)",
  implements: [ "MediumPartsPressingRobots" ]
}

Resource "ScrewingRobots": {
  name: "ScrewingRobots",
  isAbstract: true
}

Resource "SC_70": {
  name: "SC_70",
  deltaFile: "DSC_70(desiredCardinality)",
  implements: [ "ScrewingRobots" ]
}

Process "InsertPipe": {
  name: "InsertPipe",
  isAbstract: true,
  inputs: [ {productId: "Pipe"} ],
  outputs: [ {OP1: {productId: "Pipe", costWeight: 1.0}} ],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPipe2": {
  name: "InsertPipe2",
  implements: ["InsertPipe"],
  inputs: [ {productId: "Pipe2"} ],
  outputs: [ {OP2: {productId: "Pipe2", costWeight: 1.0}} ],
  deltaFile: "!DPipe2",
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPipe3": {
  name: "InsertPipe3",
  implements: ["InsertPipe"],
  inputs: [ {productId: "Pipe3"} ],
  outputs: [ {OP3: {productId: "Pipe3", costWeight: 1.0}} ],
  deltaFile: "!DPipe3",
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPipe8": {
  name: "InsertPipe8",
  implements: ["InsertPipe"],
  inputs: [ {productId: "Pipe8"} ],
  outputs: [ {OP4: {productId: "Pipe8", costWeight: 1.0}} ],
  deltaFile: "!DPipe8",
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertBarrel1_1": {
  name: "InsertBarrel1_1",
  inputs: [ {productId: "Barrel1_1"} ],
  outputs: [ {OP5: {productId: "Barrel1_1", costWeight: 1.0}} ],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressBarrel1_1": {
  name: "PressBarrel1_1",
  requires: [ "InsertBarrel1_1", "InsertPipe" ],
  inputs: [ {productId: "Barrel1_1"}, {productId: "Pipe"} ],
  outputs: [ {OP6: {productId: "ForkProduct", costWeight: 1.0}} ],
  resources: [ { resourceId: "MediumPartsPressingRobots", minCost: 50, maxCost: 100 } ]
}

Process "WeldBarrel1_1": {
  name: "WeldBarrel1_1",
  requires: [ "PressBarrel1_1", "InsertPipe" ],
  inputs: [ {productId: "Barrel1_1"}, {productId: "Pipe"} ],
  outputs: [ {OP6: {productId: "ForkProduct", costWeight: 1.0}} ],
  resources: [ { resourceId: "UltrasonicWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertBarrel1_2": {
  name: "InsertBarrel1_2",
  inputs: [ {productId: "Barrel1_2"} ],
  outputs: [ {OP5: {productId: "Barrel1_2", costWeight: 1.0}} ],
  deltaFile: "!DBarrel12",
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressBarrel1_2": {
  name: "PressBarrel1_2",
  requires: [ "InsertBarrel1_2", "InsertPipe" ],
  inputs: [ {productId: "Barrel1_2"}, {productId: "Pipe"} ],
  outputs: [ {OP6: {productId: "ForkProduct", costWeight: 1.0}} ],
  resources: [ { resourceId: "MediumPartsPressingRobots", minCost: 50, maxCost: 100 } ]
}

Process "WeldBarrel1_2": {
  name: "WeldBarrel1_2",
  requires: [ "PressBarrel1_2", "InsertPipe" ],
  inputs: [ {productId: "Barrel1_2"}, {productId: "Pipe"} ],
  outputs: [ {OP6: {productId: "ForkProduct", costWeight: 1.0}} ],
  resources: [ { resourceId: "UltrasonicWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertJack1": {
  name: "InsertJack1",
  inputs: [ {productId: "Jack1"} ],
  outputs: [ {OP7: {productId: "Jack1", costWeight: 1.0}} ],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressJack1": {
  name: "PressJack1",
  requires: [ "InsertJack1", "InsertPipe" ],
  inputs: [ {productId: "Jack1"}, {productId: "Pipe"} ],
  outputs: [ {OP8: {productId: "ForkProduct", costWeight: 1.0}} ],
  resources: [ { resourceId: "MediumPartsPressingRobots", minCost: 50, maxCost: 100 } ]
}

Process "WeldJack1": {
  name: "WeldJack1",
  requires: [ "PressJack1", "InsertPipe" ],
  inputs: [ {productId: "Jack1"}, {productId: "Pipe"} ],
  outputs: [ {OP8: {productId: "ForkProduct", costWeight: 1.0}} ],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertRing1": {
  name: "InsertRing1",
  inputs: [ {productId: "Ring1"} ],
  outputs: [ {OP9: {productId: "Ring1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressRing1": {
  name: "PressRing1",
  requires: [ "InsertRing1", "PressJack1", "InsertPipe" ],
  inputs: [ {productId: "Ring1"}, {productId: "Jack1"}, {productId: "Pipe"} ],
  outputs: [ {OP10: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertORing": {
  name: "InsertORing",
  inputs: [ {productId: "O_Ring"} ],
  outputs: [ {OP11: {productId: "O_Ring", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressORing": {
  name: "InsertORing",
  requires: [ "InsertORing", "PressJack1", "PressRing1", "InsertPipe" ],
  inputs: [ {productId: "O_Ring"}, {productId: "Pipe"}, {productId: "Jack1"}, {productId: "Ring1"} ],
  outputs: [ {OP12: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertScrew": {
  name: "InsertScrew",
  inputs: [ {productId: "Screw"} ],
  outputs: [ {OP13: {productId: "Screw", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew": {
  name: "ScrewScrew",
  requires: [ "InsertScrew", "PressJack1", "PressRing1" ],
  inputs: [ {productId: "Screw"}, {productId: "Pipe"}, {productId: "Jack1"}, {productId: "Ring1"} ],
  outputs: [ {OP14: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertFork5": {
  name: "InsertFork5",
  inputs: [ {productId: "Fork5"} ],
  outputs: [ {OP15: {productId: "Fork5", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "WeldFork5": {
  name: "WeldFork5",
  requires: [ "InsertFork5", "InsertPipe" ],
  inputs: [ {productId: "Fork5"}, {productId: "Pipe"} ],
  outputs: [ {OP16: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertFork3": {
  name: "InsertFork3",
  inputs: [ {productId: "Fork3"}, {productId: "Pipe"} ],
  outputs: [ {OP17: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "WeldFork3": {
  name: "WeldFork3",
  requires: [ "InsertFork3", "WeldFork5" ],
  inputs: [ {productId: "Fork3"}, {productId: "Pipe"}, {productId: "Fork5"} ],
  outputs: [ {OP18: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertFork4": {
  name: "InsertFork4",
  inputs: [ {productId: "Fork4"} ],
  outputs: [ {OP19: {productId: "Fork4", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "WeldFork4": {
  name: "WeldFork4",
  requires: [ "InsertFork4", "WeldFork5" ],
  inputs: [ {productId: "Fork4"}, {productId: "Pipe"}, {productId: "Fork5"} ],
  outputs: [ {OP20: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "InsertLock": {
  name: "InsertLock",
  isAbstract: true,
  inputs: [ {productId: "Lock"} ],
  outputs: [ {OP21: {productId: "Lock", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertLock1": {
  name: "InsertLock1",
  implements: [ "InsertLock" ],
  inputs: [ {productId: "Lock1"} ],
  deltaFile: "!DLock1",
  outputs: [ {OP22: {productId: "Lock1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertLock2": {
  name: "InsertLock2",
  implements: [ "InsertLock" ],
  inputs: [ {productId: "Lock2"} ],
  deltaFile: "!DLock2",
  outputs: [ {OP23: {productId: "Lock2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertLock3": {
  name: "InsertLock3",
  implements: [ "InsertLock" ],
  inputs: [ {productId: "Lock3"} ],
  deltaFile: "!DLock3",
  outputs: [ {OP24: {productId: "Lock3", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "WeldLock": {
  name: "WeldLock",
  isAbstract: true,
  requires: [ "InsertLock", "WeldFork3", "WeldFork4" ],
  inputs: [ {productId: "Lock"}, {productId: "Pipe"}, {productId: "Fork4"}, {productId: "Fork3"} ],
  outputs: [ {OP25: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "WeldLock1": {
  name: "WeldLock1",
  implements: [ "WeldLock" ],
  requires: [ "InsertLock1", "WeldFork3", "WeldFork4" ],
  inputs: [ {productId: "Lock1"}, {productId: "Pipe"}, {productId: "Fork4"}, {productId: "Fork3"} ],
  outputs: [ {OP26: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "WeldLock2": {
  name: "WeldLock2",
  implements: [ "WeldLock" ],
  requires: [ "InsertLock2", "WeldFork3", "WeldFork4" ],
  inputs: [ {productId: "Lock2"}, {productId: "Pipe"}, {productId: "Fork4"}, {productId: "Fork3"} ],
  outputs: [ {OP27: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Process "WeldLock3": {
  name: "WeldLock3",
  implements: [ "WeldLock" ],
  requires: [ "InsertLock3", "WeldFork3", "WeldFork4" ],
  inputs: [ {productId: "Lock3"}, {productId: "Pipe"}, {productId: "Fork4"}, {productId: "Fork3"} ],
  outputs: [ {OP28: {productId: "ForkProduct", costWeight: 1.0}}],
  resources: [ { resourceId: "LaserWeldingRobots", minCost: 50, maxCost: 100 } ]
}

Constraint "Constraint1": {
  definition: "Lock1, Pipe2, Pipe3 -> Lock1 implies Pipe2 or Pipe3" 
}

Constraint "Constraint2": {
  definition: "Lock2, Pipe3 -> Lock2 implies Pipe3" 
}

Constraint "Constraint3": {
  definition: "Lock3, Pipe8 -> Lock3 implies Pipe8" 
}

Constraint "Constraint4": {
  definition: "Pipe2, Pipe8, Barrel1_2  -> Pipe2 or Pipe8 implies Barrel1_2" 
}


