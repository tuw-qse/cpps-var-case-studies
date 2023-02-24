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

Product "Pole1_1": {
  name: "Pole 1_1",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Pole1_2": {
  name: "Pole 1_2",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Pole2_1": {
  name: "Pole 2_1",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Pole2_2": {
  name: "Pole 2_2",
  implements: [ "Pole" ],
  partialProduct: "true"
}

Product "Neutral": {
  name: "Neutral",
  isAbstract: true,
  partialProduct: "true"
}

Product "Neutral1_1": {
  name: "Neutral 1_1",
  implements: [ "Neutral" ],
  partialProduct: "true"
}

Product "Neutral1_2": {
  name: "Neutral 1_2",
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

Product "Rocker1_1": {
  name: "Rocker 1_1",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole1_1" ],
  partialProduct: "true"
}

Product "Rocker1_2": {
  name: "Rocker 1_2",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole2_1" ],
  partialProduct: "true"
}

Product "Rocker2_1": {
  name: "Rocker 2_1",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole2_1" ],
  partialProduct: "true"
}

Product "Rocker2_2": {
  name: "Rocker 2_2",
  isAbstract: false, 
  implements: [ "Rocker" ],
  requires: [ "Pole2_2" ],
  partialProduct: "true"
}

Product "Off": {
  name: "Off",
  isAbstract: true,
  requires: [ "Rocker" ],
  partialProduct: "true"
}

Product "Off1_1": {
  name: "Off 1_1",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Off1_2": {
  name: "Off 1_2",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Off1_3": {
  name: "Off 1_3",
  isAbstract: false, 
  implements: [ "Off" ],
  partialProduct: "true"
}

Product "Off1_4": {
  name: "Off 1_4",
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

Product "Screw1_1": {
  name: "Screw 1_1",
  implements: [ "Screw" ],
  partialProduct: "true"
}

Product "Screw1_2": {
  name: "Screw 1_2",
  implements: [ "Screw" ],
  partialProduct: "true"
}

Product "O_Ring": {
  name: "O_Ring",
  isAbstract: true,
  partialProduct: "true"
}

Product "O_Ring1_1": {
  name: "O_Ring 1_1",
  implements: [ "O_Ring" ],
  partialProduct: "true"
}

Product "O_Ring1_2": {
  name: "O_Ring 1_2",
  implements: [ "O_Ring" ],
  partialProduct: "true"
}

Product "Claw": {
  name: "Claw",
  isAbstract: true,
  partialProduct: "true"
}

Product "Claw1_1": {
  name: "Claw 1_1",
  implements: [ "Claw" ],
  partialProduct: "true"
}

Product "Claw1_2": {
  name: "Claw 1_2",
  implements: [ "Claw" ],
  partialProduct: "true"
}

Product "Rockerswitch": {
  name: "Rockerswitch",
  isAbstract: true,
  requires: [ "Socket", "Screw1_1", "O_Ring1_1", "Claw1_1", "Screw1_2", "O_Ring1_2", "Claw1_2" ],
}

Product "Rockerswitch_A": {
  name: "Rockerswitch_A",
  implements: [ "Rockerswitch"],
  requires: [ "Changeover1", "Rocker1_1", "Off1_1", "Pole1_1" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_B": {
  name: "Rockerswitch_B",
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1_1", "Changeover1", "Rocker1_1", "Off1_1", "Pole1_1" ],
  excludes: [ "Rockerswitch_A", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_C": {
  name: "Rockerswitch_C",
  implements: [ "Rockerswitch" ],
  requires: [ "Rocker1_1", "Off1_1", "Pole1_1" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_A", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_D": {
  name: "Rockerswitch_D",
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1_1", "Rocker1_1", "Off1_1", "Pole1_1" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_A", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_E": {
  name: "Rockerswitch_E",
  implements: [ "Rockerswitch" ],
  requires: [ "Neutral1_1", "Neutral1_2", "Rocker1_1", "Off1_1", "Pole1_1" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_A", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_F": {
  name: "Rockerswitch_F",
  implements: [ "Rockerswitch" ],
  requires: [ "Changeover1", "Rocker1_1", "Rocker1_2", "Off1_1", "Pole1_1", "Pole1_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_A", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_G": {
  name: "Rockerswitch_G",
  implements: [ "Rockerswitch"],
  requires: [ "Off1_2", "Rocker1_1", "Rocker1_2", "Off1_1", "Pole1_1", "Pole1_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_A", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_H": {
  name: "Rockerswitch_H",
  implements: [ "Rockerswitch" ],
  requires: [ "Pole1_1", "Pole1_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_A", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_I": {
  name: "Rockerswitch_I",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker1_1", "Rocker1_2", "Series", "Pole1_1", "Pole1_2" ],
  requires: [ "Rocker1_1", "Rocker1_2", "Series", "Pole1_1", "Pole1_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_A", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_J": {
  name: "Rockerswitch_J",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker1_1", "Rocker1_2", "Series", "Neutral1_1", "Pole1_1", "Pole1_2" ],
  requires: [ "Rocker1_1", "Rocker1_2", "Series", "Neutral1_1", "Pole1_1", "Pole1_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_A", "Rockerswitch_K", "Rockerswitch_L"]
}

Product "Rockerswitch_K": {
  name: "Rockerswitch_K",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker2_1", "Rocker2_2", "Off1_1", "Off1_2", "Off1_3", "Off1_4", "Pole2_1", "Pole2_2" ],
  requires: [ "Rocker2_1", "Rocker2_2", "Off1_1", "Off1_2", "Off1_3", "Off1_4", "Pole2_1", "Pole2_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_A", "Rockerswitch_L"]
}

Product "Rockerswitch_L": {
  name: "Rockerswitch_L",
  implements: [ "Rockerswitch" ],
  children: [ "Rocker1_1", "Rocker1_2", "Changeover2", "Crossover", "Pole1_1", "Pole1_2" ],
  requires: [ "Rocker1_1", "Rocker1_2", "Changeover2", "Crossover", "Pole1_1", "Pole1_2" ],
  excludes: [ "Rockerswitch_B", "Rockerswitch_C", "Rockerswitch_D", "Rockerswitch_E", "Rockerswitch_F", "Rockerswitch_G", "Rockerswitch_H", "Rockerswitch_I", "Rockerswitch_J", "Rockerswitch_K", "Rockerswitch_A"]
}

Resource "Linefeeds": {
  name: "Linefeeds",
  isAbstract: true
}

Resource "LF_3": {
  name: "LF_3",
  implements: [ "Linefeeds" ] 
}

Resource "LF_4": {
  name: "LF_4",
  implements: [ "Linefeeds" ] 
}

Resource "LF_6": {
  name: "LF_6",
  implements: [ "Linefeeds" ] 
}

Resource "PressinRobots": {
  name: "PressingRobots",
  isAbstract: true
}

Resource "SmallPartsPressinRobots": {
  name: "SmallPartsPressinRobots",
  implements: [ "PressinRobots" ],
  isAbstract: true
}

Resource "MediumPartsPressinRobots": {
  name: "MediumPartsPressinRobots",
  implements: [ "PressinRobots" ],
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
  inputs: [ {productId: "Pole"} ],
  outputs: [ {OP2: {productId: "Pole", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole1_1": {
  name: "InsertPole1_1",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole1_1"} ],
  outputs: [ {OP3: {productId: "Pole1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole1_2": {
  name: "InsertPole1_2",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole1_2"} ],
  outputs: [ {OP4: {productId: "Pole1_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole2_1": {
  name: "InsertPole2_1",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole2_1"} ],
  outputs: [ {OP5: {productId: "Pole2_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertPole2_2": {
  name: "InsertPole2_2",
  implements: [ "InsertPole" ],
  inputs: [ {productId: "Pole2_2"} ],
  outputs: [ {OP6: {productId: "Pole2_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertNeutral": {
  name: "InsertNeutral",
  isAbstract: true,
  inputs: [ {productId: "Neutral"} ],
  outputs: [ {OP7: {productId: "Neutral", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertNeutral1_1": {
  name: "InsertNeutral1_1",
  implements: [ "InsertNeutral" ],
  inputs: [ {productId: "Neutral1_1"} ],
  outputs: [ {OP8: {productId: "Neutral1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertNeutral1_2": {
  name: "InsertNeutral1_2",
  implements: [ "InsertNeutral" ],
  inputs: [ {productId: "Neutral1_2"} ],
  outputs: [ {OP9: {productId: "Neutral1_2", costWeight: 1.0}}],
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

Process "InsertRocker1_1": {
  name: "InsertRocker1_1",
  inputs: [ {productId: "Rocker1_1"} ],
  outputs: [ {OP14: {productId: "Rocker1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker1_2": {
  name: "InsertRocker1_2",
  implements: [ "InsertRocker" ],
  inputs: [ {productId: "Rocker1_2"} ],
  outputs: [ {OP15: {productId: "Rocker1_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker2_1": {
  name: "InsertRocker2_1",
  implements: [ "InsertRocker" ],
  inputs: [ {productId: "Rocker2_1"} ],
  outputs: [ {OP16: {productId: "Rocker2_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertRocker2_2": {
  name: "InsertRocker2_2",
  implements: [ "InsertRocker" ],
  inputs: [ {productId: "Rocker2_2"} ],
  outputs: [ {OP17: {productId: "Rocker2_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff": {
  name: "InsertOff",
  isAbstract: true,
  inputs: [ {productId: "Off"} ],
  outputs: [ {OP18: {productId: "Off", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1_1": {
  name: "InsertOff1_1",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1_1"} ],
  outputs: [ {OP20: {productId: "Off1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1_2": {
  name: "InsertOff1_2",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1_2"} ],
  outputs: [ {OP21: {productId: "Off1_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1_3": {
  name: "InsertOff1_3",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1_3"} ],
  outputs: [ {OP22: {productId: "Off1_3", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertOff1_4": {
  name: "InsertOff1_4",
  implements: [ "InsertOff" ],
  inputs: [ {productId: "Off1_4"} ],
  outputs: [ {OP23: {productId: "Off1_4", costWeight: 1.0}}],
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

Process "InsertScrew1_1": {
  name: "InsertScrew1_1",
  implements: [ "InsertScrew" ],
  inputs: [ {productId: "Screw1_1"} ],
  outputs: [ {OP27: {productId: "Screw1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertScrew1_2": {
  name: "InsertScrew1_2",
  implements: [ "InsertScrew" ],
  inputs: [ {productId: "Screw1_2"} ],
  outputs: [ {OP28: {productId: "Screw1_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertO_Ring": {
  name: "InsertO_Ring",
  isAbstract: true,
  inputs: [ {productId: "O_Ring"} ],
  outputs: [ {OP29: {productId: "O_Ring", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertO_Ring1_1": {
  name: "InsertO_Ring1_1",
  implements: [ "InsertO_Ring" ],
  inputs: [ {productId: "O_Ring1_1"} ],
  outputs: [ {OP30: {productId: "O_Ring1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertO_Ring1_2": {
  name: "InsertO_Ring1_2",
  implements: [ "InsertO_Ring" ],
  inputs: [ {productId: "O_Ring1_2"} ],
  outputs: [ {OP31: {productId: "O_Ring1_2", costWeight: 1.0}}],
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

Process "InsertClaw1_1": {
  name: "InsertClaw1_1",
  implements: [ "InsertClaw" ],
  requires: [ "InsertO_Ring", "InsertO_Ring1_1" ],
  inputs: [ {productId: "Claw1_1"} ],
  outputs: [ {OP33: {productId: "Claw1_1", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "InsertClaw1_2": {
  name: "InsertClaw1_2",
  implements: [ "InsertClaw", "InsertO_Ring1_2" ],
  inputs: [ {productId: "Claw1_2"} ],
  outputs: [ {OP34: {productId: "Claw1_2", costWeight: 1.0}}],
  resources: [ { resourceId: "Linefeeds", minCost: 50, maxCost: 100 } ]
}

Process "PressPole": {
  name: "PressPole",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertPole" ],
  inputs: [ {productId: "Socket"}, {productId: "Pole"} ],
  outputs: [ {OP35: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole1_1": {
  name: "PressPole1_1",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole1_1" ],
  inputs: [ {productId: "Pole1_1"} ],
  outputs: [ {OP36: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole1_2": {
  name: "PressPole1_2",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Pole1_2"} ],
  outputs: [ {OP37: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole2_1": {
  name: "PressPole2_1",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole2_1" ],
  inputs: [ {productId: "Socket"}, {productId: "Pole2_1"} ],
  outputs: [ {OP38: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressPole2_2": {
  name: "PressPole2_2",
  implements: [ "PressPole" ],
  requires: [ "InsertSocket", "InsertPole2_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Pole2_2"} ],
  outputs: [ {OP39: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressNeutral": {
  name: "PressNeutral",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertNeutral" ],
  inputs: [ {productId: "Socket"}, {productId: "Neutral"} ],
  outputs: [ {OP40: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressNeutral1_1": {
  name: "PressNeutral1_1",
  requires: [ "InsertSocket", "InsertNeutral1_1" ],
  inputs: [ {productId: "Socket"}, {productId: "Neutral1_1"} ],
  outputs: [ {OP41: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressNeutral1_2": {
  name: "PressNeutral1_2",
  requires: [ "InsertSocket", "InsertNeutral1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Neutral1_2"} ],
  outputs: [ {OP42: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressChangeover": {
  name: "PressChangeover",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertChangeover" ],
  inputs: [ {productId: "Socket"}, {productId: "Changeover"} ],
  outputs: [ {OP43: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressChangeover1": {
  name: "PressChangeover1",
  requires: [ "InsertSocket", "InsertChangeover1" ],
  inputs: [ {productId: "Socket"}, {productId: "Changeover1"} ],
  outputs: [ {OP44: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressChangeover2": {
  name: "PressChangeover2",
  requires: [ "InsertSocket", "InsertChangeover2", "PressRocker1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Changeover2"}, {productId: "Rocker1_2"} ],
  outputs: [ {OP45: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker": {
  name: "PressRocker",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertRocker" ],
  inputs: [ {productId: "Socket"}, {productId: "Rocker"} ],
  outputs: [ {OP46: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker1_1": {
  name: "PressRocker1_1",
  requires: [ "InsertSocket", "InsertRocker1_1", "PressNeutral1_1" ],
  inputs: [ {productId: "Socket"}, {productId: "Rocker1_1"}, {productId: "Neutral1_1"} ],
  outputs: [ {OP47: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker1_2": {
  name: "PressRocker1_2",
  requires: [ "InsertSocket", "InsertRocker1_2", "PressNeutral1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Rocker1_2"}, {productId: "Neutral1_2"} ],
  outputs: [ {OP48: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker2_1": {
  name: "PressRocker2_1",
  requires: [ "InsertSocket", "InsertRocker2_1", "PressPole2_1" ],
  inputs: [ {productId: "Socket"}, {productId: "Rocker2_1"}, {productId: "Pole2_1"} ],
  outputs: [ {OP49: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressRocker2_2": {
  name: "PressRocker2_2",
  requires: [ "InsertSocket", "InsertRocker2_2", "PressPole2_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Rocker2_2"}, {productId: "Pole2_2"} ],
  outputs: [ {OP50: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff": {
  name: "PressOff",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertOff" ],
  inputs: [ {productId: "Socket"}, {productId: "Off"} ],
  outputs: [ {OP60: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1_1": {
  name: "PressOff1_1",
  requires: [ "InsertSocket", "InsertOff1_1" ],
  inputs: [ {productId: "Socket"}, {productId: "Off1_1"} ],
  outputs: [ {OP61: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1_2": {
  name: "PressOff1_2",
  requires: [ "InsertSocket", "InsertOff1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Off1_2"} ],
  outputs: [ {OP62: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1_3": {
  name: "PressOff1_3",
  requires: [ "InsertSocket", "InsertOff1_3" ],
  inputs: [ {productId: "Socket"}, {productId: "Off1_3"} ],
  outputs: [ {OP63: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressOff1_4": {
  name: "PressOff1_4",
  requires: [ "InsertSocket", "InsertOff1_4" ],
  inputs: [ {productId: "Socket"}, {productId: "Off1_4"} ],
  outputs: [ {OP64: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressCrossover": {
  name: "PressCrossover",
  requires: [ "InsertSocket", "InsertCrossover", "PressRocker1_1", "PressChangeover2" ],
  inputs: [ {productId: "Socket"}, {productId: "Crossover"}, {productId: "Rocker1_1"}, {productId: "Changeover2"} ],
  outputs: [ {OP65: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "PressSeries": {
  name: "PressSeries",
  requires: [ "InsertSocket", "InsertSeries", "PressRocker1_1", "PressRocker1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Series"}, {productId: "Rocker1_1"}, {productId: "Rocker1_2"} ],
  outputs: [ {OP66: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "SmallPartsPressinRobots", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew": {
  name: "ScrewScrew",
  isAbstract: true,
  requires: [ "InsertSocket", "InsertScrew", "InsertO_Ring", "InsertClaw" ],
  inputs: [ {productId: "Socket"}, {productId: "Screw"}, {productId: "O_Ring"}, {productId: "Claw"} ],
  outputs: [ {OP67: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew1_1": {
  name: "ScrewScrew1_1",
  requires: [ "InsertSocket", "InsertScrew1_1", "InsertO_Ring1_1", "InsertClaw1_1" ],
  inputs: [ {productId: "Socket"}, {productId: "Screw1_1"}, {productId: "O_Ring1_1"}, {productId: "Claw1_1"} ],
  outputs: [ {OP68: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Process "ScrewScrew1_2": {
  name: "ScrewScrew1_2",
  requires: [ "InsertSocket", "InsertScrew1_2", "InsertO_Ring1_2", "InsertClaw1_2" ],
  inputs: [ {productId: "Socket"}, {productId: "Screw1_2"}, {productId: "O_Ring1_2"}, {productId: "Claw1_2"} ],
  outputs: [ {OP69: {productId: "Rockerswitch", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingRobots", minCost: 50, maxCost: 100 } ]
}

Constraint "Constraint1": {
  definition: "Off1_1, Rocker1_1 -> Off1_1 implies Rocker1_1" 
}

Constraint "Constraint2": {
  definition: "Off1_2, Rocker1_2 -> Off1_2 implies Rocker1_2" 
}

Constraint "Constraint3": {
  definition: "Changeover1, Rocker1_1 -> Changeover1 implies Rocker1_1"
}

Constraint "Constraint4": {
  definition: "Changeover2, Rocker1_1, Rocker1_2 -> (Changeover2 implies Rocker1_1) and (Changeover2 implies Rocker1_2)"
}
