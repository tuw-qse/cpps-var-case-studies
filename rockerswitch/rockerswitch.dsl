Attribute "partialProduct": {
  description: "Specifies if the given product is a partial one",
  defaultValue: "false",
  type: "String"
}

Product "Socket": {
  name: "Socket",
  partialProduct: "true"
}

Product "Pole": {
  name: "Pole",
  isAbstract: true,
  partialProduct: "true"
}

Product "Pole1-1": {
  name: "Pole 1-1",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Pole1-2": {
  name: "Pole 1-2",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Pole2-1": {
  name: "Pole 2-1",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Pole2-2": {
  name: "Pole 2-2",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Neutral": {
  name: "Neutral",
  isAbstract: true,
  partialProduct: "true"
}

Product "Neutral1-1": {
  name: "Neutral 1-1",
  implements: [ "Neutral" ],
  partialProduct: "true"
}

Product "Neutral1-2": {
  name: "Neutral 1-2",
  implements: [ "Neutral" ],
  partialProduct: "true"
}

Product "Changeover": {
  name: "Changeover",
  isAbstract: true,
  partialProduct: "true"
}

Product "Changeover1": {
  name: "Changeover 1",
  implements: [ "Changeover" ],
  partialProduct: "true"
}

Product "Changeover2": {
  name: "Changeover 2",
  implements: [ "Changeover" ],
  partialProduct: "true"
}

Product "Rocker": {
  name: "Rocker",
  isAbstract: true,
  requires: [ "Pole" ],
  partialProduct: "true"
}

Product "Rocker1-1": {
  name: "Rocker 1-1",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole1-1" ],
  partialProduct: "true"
}

Product "Rocker1-2": {
  name: "Rocker 1-2",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole2-1" ],
  partialProduct: "true"
}

Product "Rocker2-1": {
  name: "Rocker 2-1",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole2-1" ],
  partialProduct: "true"
}

Product "Rocker2-2": {
  name: "Rocker 2-2",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole2-2" ],
  partialProduct: "true"
}

Product "Off": {
  name: "Off",
  isAbstract: true,
  requires: [ "Rocker" ],
  partialProduct: "true"
}

Product "Off1-1": {
  name: "Off 1-1",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Off1-2": {
  name: "Off 1-2",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Off1-3": {
  name: "Off 1-3",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Off1-4": {
  name: "Off 1-4",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Crossover": {
  name: "Crossover",
  partialProduct: "true"
}

Product "Series": {
  name: "Series",
  partialProduct: "true"
}

Product "Screw": {
  name: "Screw",
  isAbstract: true,
  partialProduct: "true"
}

Product "Screw1-1": {
  name: "Screw 1-1",
  implements: [ "Screw" ],
  partialProduct: "true"
}

Product "Screw1-2": {
  name: "Screw 1-2",
  implements: [ "Screw" ],
  partialProduct: "true"
}

Product "O_Ring": {
  name: "O_Ring",
  isAbstract: true,
  partialProduct: "true"
}

Product "O_Ring1-1": {
  name: "O_Ring 1-1",
  implements: [ "O_Ring" ],
  partialProduct: "true"
}

Product "O_Ring1-2": {
  name: "O_Ring 1-2",
  implements: [ "O_Ring" ],
  partialProduct: "true"
}

Product "Claw": {
  name: "Claw",
  isAbstract: true,
  partialProduct: "true"
}

Product "Claw1-1": {
  name: "Claw 1-1",
  implements: [ "Claw" ],
  partialProduct: "true"
}

Product "Claw1-2": {
  name: "Claw 1-2",
  implements: [ "Claw" ],
  partialProduct: "true"
}

Product "Rockerswitch": {
  name: "Rockerswitch",
  isAbstract: true,
  requires: [ "Socket", "Screw1-1", "O_Ring1-1", "Claw1-1", "Screw1-2", "O_Ring1-2", "Claw1-2" ],
}

Product "Rockerswitch-A": {
  name: "Rockerswitch-A",
  implements: [ "Rockerswitch"],
  requires: [ "Changeover1", "Rocker1-1", "Off1-1", "Pole1-1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-B": {
  name: "Rockerswitch-B",
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1-1", "Changeover1", "Rocker1-1", "Off1-1", "Pole1-1" ],
  excludes: [ "Rockerswitch-A", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-C": {
  name: "Rockerswitch-C",
  implements: [ "Rockerswitch" ],
  requires: [ "Rocker1-1", "Off1-1", "Pole1-1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-A", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-D": {
  name: "Rockerswitch-D",
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1-1", "Rocker1-1", "Off1-1", "Pole1-1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-A", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-E": {
  name: "Rockerswitch-E",
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1-1", "Neutral1-2", "Rocker1-1", "Off1-1", "Pole1-1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-A", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-F": {
  name: "Rockerswitch-F",
  implements: [ "Rockerswitch" ],
  requires: [ "Changeover1", "Rocker1-1", "Rocker1-2", "Off1-1", "Pole1-1", "Pole1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-A", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-G": {
  name: "Rockerswitch-G",
  implements: [ "Rockerswitch"],
  requires: [ "Off1-2", "Rocker1-1", "Rocker1-2", "Off1-1", "Pole1-1", "Pole1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-A", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-H": {
  name: "Rockerswitch-H",
  implements: [ "Rockerswitch" ],
  requires: [ "Pole1-1", "Pole1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-A", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-I": {
  name: "Rockerswitch-I",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker1-1", "Rocker1-2", "Series", "Pole1-1", "Pole1-2" ],
  requires: [ "Rocker1-1", "Rocker1-2", "Series", "Pole1-1", "Pole1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-A", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-J": {
  name: "Rockerswitch-J",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker1-1", "Rocker1-2", "Series", "Neutral1-1", "Pole1-1", "Pole1-2" ],
  requires: [ "Rocker1-1", "Rocker1-2", "Series", "Neutral1-1", "Pole1-1", "Pole1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-A", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-K": {
  name: "Rockerswitch-K",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker2-1", "Rocker2-2", "Off1-1", "Off1-2", "Off1-3", "Off1-4", "Pole2-1", "Pole2-2" ],
  requires: [ "Rocker2-1", "Rocker2-2", "Off1-1", "Off1-2", "Off1-3", "Off1-4", "Pole2-1", "Pole2-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-A", "Rockerswitch-L"]
}

Product "Rockerswitch-L": {
  name: "Rockerswitch-L",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker1-1", "Rocker1-2", "Changeover2", "Crossover", "Pole1-1", "Pole1-2" ],
  requires: [ "Rocker1-1", "Rocker1-2", "Changeover2", "Crossover", "Pole1-1", "Pole1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-A"]
}

Resource "Linefeeds": {
  name: "Linefeeds",
  isAbstract: true
}

Resource "LF-3": {
  name: "LF-3",
  implements: [ "Linefeeds" ] 
}

Resource "LF-4": {
  name: "LF-4",
  implements: [ "Linefeeds" ] 
}

Resource "LF-6": {
  name: "LF-6",
  implements: [ "Linefeeds" ] 
}

Resource "PressinRobots": {
  name: "PressingRobots",
  isAbstract: true
}

Resource "SmallPartsPressinRobots": {
  name: "SmallPartsPressinRobots",
  isAbstract: true
}

Resource "MediumPartsPressinRobots": {
  name: "MediumPartsPressinRobots",
  isAbstract: true
}

Resource "PR_02": {
  name: "PR_02",
  implements: [ "SmallPartsPressinRobots" ]
}

Resource "PR_04": {
  name: "PR_04",
  implements: [ "MediumPartsPressinRobots" ]
}

Resource "PR_05": {
  name: "PR_05",
  implements: [ "SmallPartsPressinRobots" ]
}

Resource "PR_12": {
  name: "PR_12",
  implements: [ "MediumPartsPressinRobots" ]
}

Resource "ScrewingRobots": {
  name: "ScrewingRobots",
  isAbstract: true
}

Resource "SC_70": {
  name: "SC_70",
  implements: [ "ScrewingRobots" ]
}

Process "InsertSocket": {
  name: "InsertSocket",
  inputs: [ {productId: "Socket"} ],
  outputs: [ {OP1: {productId: "Socket", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole": {
  name: "InsertPole",
  isAbstract: true,
  inputs: [ {productId: "Rockerswitch"}, {productId: "Pole"} ],
  outputs: [ {OP2: {productId: "Pole", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole1-1": {
  name: "InsertPole1-1",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole1-1"} ],
  outputs: [ {OP3: {productId: "Pole1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole1-2": {
  name: "InsertPole1-2",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole1-2"} ],
  outputs: [ {OP4: {productId: "Pole1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole2-1": {
  name: "InsertPole2-1",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole2-1"} ],
  outputs: [ {OP5: {productId: "Pole2-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole2-2": {
  name: "InsertPole2-2",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole2-2"} ],
  outputs: [ {OP6: {productId: "Pole2-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertNeutral": {
  name: "InsertNeutral",
  isAbstract: true,
  inputs: [ {productId: "Neutral"} ],
  outputs: [ {OP7: {productId: "Neutral", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertNeutral1-1": {
  name: "InsertNeutral1-1",
  implements: [ "InsertNeutral" ],
  inputs: [ {productId: "Neutral1-1"} ],
  outputs: [ {OP8: {productId: "Neutral1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertNeutral1-2": {
  name: "InsertNeutral1-2",
  implements: [ "InsertNeutral" ],
  inputs: [ {productId: "Neutral1-2"} ],
  outputs: [ {OP9: {productId: "Neutral1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertChangeover": {
  name: "InsertChangeover",
  isAbstract: true,
  inputs: [ {productId: "Changeover"} ],
  outputs: [ {OP10: {productId: "Changeover", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertChangeover1": {
  name: "InsertChangeover1",
  implements: [ "InsertChangeover" ],
  inputs: [ {productId: "Changeover1"} ],
  outputs: [ {OP11: {productId: "Changeover1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertChangeover2": {
  name: "InsertChangeover2",
  implements: [ "InsertChangeover" ],
  inputs: [ {productId: "Changeover2"} ],
  outputs: [ {OP12: {productId: "Changeover2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker": {
  name: "InsertRocker",
  isAbstract: true,
  inputs: [ {productId: "Rocker"} ],
  outputs: [ {OP13: {productId: "Rocker", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker1-1": {
  name: "InsertRocker1-1",
  inputs: [ {productId: "Rocker1-1"} ],
  outputs: [ {OP14: {productId: "Rocker1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker1-2": {
  name: "InsertRocker1-2",
  implements: [ "InsertRocker" ],
  inputs: [ {productId: "Rocker1-2"} ],
  outputs: [ {OP15: {productId: "Rocker1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker2-1": {
  name: "InsertRocker2-1",
  implements: [ "InsertRocker" ],
  inputs: [ {productId: "Rocker2-1"} ],
  outputs: [ {OP16: {productId: "Rocker2-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker2-2": {
  name: "InsertRocker2-2",
  implements: [ "InsertRocker" ],
  inputs: [ {productId: "Rocker2-2"} ],
  outputs: [ {OP17: {productId: "Rocker2-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff": {
  name: "InsertOff",
  isAbstract: true,
  inputs: [ {productId: "Off"} ],
  outputs: [ {OP18: {productId: "Off", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1-1": {
  name: "InsertOff1-1",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1-1"} ],
  outputs: [ {OP20: {productId: "Off1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1-2": {
  name: "InsertOff1-2",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1-2"} ],
  outputs: [ {OP21: {productId: "Off1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1-3": {
  name: "InsertOff1-3",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1-3"} ],
  outputs: [ {OP22: {productId: "Off1-3", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1-4": {
  name: "InsertOff1-4",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1-4"} ],
  outputs: [ {OP23: {productId: "Off1-4", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertCrossover": {
  name: "InsertCrossover",
  inputs: [ {productId: "Crossover"} ],
  outputs: [ {OP24: {productId: "Crossover", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertSeries": {
  name: "InsertSeries",
  inputs: [ {productId: "Series"} ],
  outputs: [ {OP25: {productId: "Series", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertScrew": {
  name: "InsertScrew",
  isAbstract: true,
  inputs: [ {productId: "Screw"} ],
  outputs: [ {OP26: {productId: "Screw", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertScrew1-1": {
  name: "InsertScrew1-1",
  implements: [ "InsertScrew" ],
  inputs: [ {productId: "Screw1-1"} ],
  outputs: [ {OP27: {productId: "Screw1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertScrew1-2": {
  name: "InsertScrew1-2",
  implements: [ "InsertScrew" ],
  inputs: [ {productId: "Screw1-2"} ],
  outputs: [ {OP28: {productId: "Screw1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertO_Ring": {
  name: "InsertO_Ring",
  isAbstract: true,
  inputs: [ {productId: "O_Ring"} ],
  outputs: [ {OP29: {productId: "O_Ring", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertO_Ring1-1": {
  name: "InsertO_Ring1-1",
  implements: [ "InsertO_Ring" ],
  inputs: [ {productId: "O_Ring1-1"} ],
  outputs: [ {OP30: {productId: "O_Ring1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertO_Ring1-2": {
  name: "InsertO_Ring1-2",
  implements: [ "InsertO_Ring" ],
  inputs: [ {productId: "O_Ring1-2"} ],
  outputs: [ {OP31: {productId: "O_Ring1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertClaw": {
  name: "InsertClaw",
  isAbstract: true,
  requires: [ "InsertO_Ring" ],
  inputs: [ {productId: "Claw"} ],
  outputs: [ {OP32: {productId: "Claw", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertClaw1-1": {
  name: "InsertClaw1-1",
  implements: [ "InsertClaw" ],
  requires: [ "InsertO_Ring", "InsertO_Ring1-1" ],
  inputs: [ {productId: "Claw1-1"} ],
  outputs: [ {OP33: {productId: "Claw1-1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertClaw1-2": {
  name: "InsertClaw1-2",
  implements: [ "InsertClaw", "InsertO_Ring1-2" ],
  inputs: [ {productId: "Claw1-2"} ],
  outputs: [ {OP34: {productId: "Claw1-2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressPole": {
  name: "PressPole",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertPole" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Pole"} ],
  outputs: [ {OP35: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole1-1": {
  name: "PressPole1-1",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole1-1" ],
  inputs: [ {productId: "Pole1-1"} ],
  outputs: [ {OP36: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole1-2": {
  name: "PressPole1-2",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Pole1-2"} ],
  outputs: [ {OP37: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole2-1": {
  name: "PressPole2-1",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole2-1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Pole2-1"} ],
  outputs: [ {OP38: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole2-2": {
  name: "PressPole2-2",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole2-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Pole2-2"} ],
  outputs: [ {OP39: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressNeutral": {
  name: "PressNeutral",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertNeutral" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Neutral"} ],
  outputs: [ {OP40: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressNeutral1-1": {
  name: "PressNeutral1-1",
  requires: [ "InsertSocket", "InsertNeutral1-1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Neutral1-1"} ],
  outputs: [ {OP41: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressNeutral1-2": {
  name: "PressNeutral1-2",
  requires: [ "InsertSocket", "InsertNeutral1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Neutral1-2"} ],
  outputs: [ {OP42: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressChangeover": {
  name: "PressChangeover",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertChangeover" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Changeover"} ],
  outputs: [ {OP43: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressChangeover1": {
  name: "PressChangeover1",
  requires: [ "InsertSocket", "InsertChangeover1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Changeover1"} ],
  outputs: [ {OP44: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressChangeover2": {
  name: "PressChangeover2",
  requires: [ "InsertSocket", "InsertChangeover2", "PressRocker1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Changeover2"}, {productId: "Rocker1-2"} ],
  outputs: [ {OP45: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker": {
  name: "PressRocker",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertRocker" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Rocker"} ],
  outputs: [ {OP46: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker1-1": {
  name: "PressRocker1-1",
  requires: [ "InsertSocket", "InsertRocker1-1", "PressNeutral1-1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Rocker1-1"}, {productId: "Neutral1-1"} ],
  outputs: [ {OP47: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker1-2": {
  name: "PressRocker1-2",
  requires: [ "InsertSocket", "InsertRocker1-2", "PressNeutral1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Rocker1-2"}, {productId: "Neutral1-2"} ],
  outputs: [ {OP48: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker2-1": {
  name: "PressRocker2-1",
  requires: [ "InsertSocket", "InsertRocker2-1", "PressPole2-1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Rocker2-1"}, {productId: "Pole2-1"} ],
  outputs: [ {OP49: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker2-2": {
  name: "PressRocker2-2",
  requires: [ "InsertSocket", "InsertRocker2-2", "PressPole2-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Rocker2-2"}, {productId: "Pole2-2"} ],
  outputs: [ {OP50: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff": {
  name: "PressOff",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertOff" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Off"} ],
  outputs: [ {OP60: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1-1": {
  name: "PressOff1-1",
  requires: [ "InsertSocket", "InsertOff1-1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Off1-1"} ],
  outputs: [ {OP61: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1-2": {
  name: "PressOff1-2",
  requires: [ "InsertSocket", "InsertOff1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Off1-2"} ],
  outputs: [ {OP62: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1-3": {
  name: "PressOff1-3",
  requires: [ "InsertSocket", "InsertOff1-3" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Off1-3"} ],
  outputs: [ {OP63: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1-4": {
  name: "PressOff1-4",
  requires: [ "InsertSocket", "InsertOff1-4" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Off1-4"} ],
  outputs: [ {OP64: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressCrossover": {
  name: "PressCrossover",
  requires: [ "InsertSocket", "InsertCrossover", "PressRocker1-1", "PressChangeover2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Crossover"}, {productId: "Rocker1-1"}, {productId: "Changeover2"} ],
  outputs: [ {OP65: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressSeries": {
  name: "PressSeries",
  requires: [ "InsertSocket", "InsertSeries", "PressRocker1-1", "PressRocker1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Series"}, {productId: "Rocker1-1"}, {productId: "Rocker1-2"} ],
  outputs: [ {OP66: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew": {
  name: "ScrewScrew",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertScrew", "InsertO_Ring", "InsertClaw" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Screw"}, {productId: "O_Ring"}, {productId: "Claw"} ],
  outputs: [ {OP67: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew1-1": {
  name: "ScrewScrew1-1",
  requires: [ "InsertSocket", "InsertScrew1-1", "InsertO_Ring1-1", "InsertClaw1-1" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Screw1-1"}, {productId: "O_Ring1-1"}, {productId: "Claw1-1"} ],
  outputs: [ {OP68: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew1-2": {
  name: "ScrewScrew1-2",
  requires: [ "InsertSocket", "InsertScrew1-2", "InsertO_Ring1-2", "InsertClaw1-2" ],
  inputs: [ {productId: "Rockerswitch"}, {productId: "Screw1-2"}, {productId: "O_Ring1-2"}, {productId: "Claw1-2"} ],
  outputs: [ {OP69: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Constraint "Constraint1": {
  definition: "Off1-1, Rocker1-1 -> Off1-1 implies Rocker1-1" 
}

Constraint "Constraint2": {
  definition: "Off1-2, Rocker1-2 -> Off1-2 implies Rocker1-2" 
}

Constraint "Constraint3": {
  definition: "Changeover1, Rocker1-1 -> Changeover1 implies Rocker1-1"
}

Constraint "Constraint3": {
  definition: "Changeover2, Rocker1-1, Rocker1-2 -> Changeover2 implies Rocker1-1 and Changeover2 implies Rocker1-2"
}
