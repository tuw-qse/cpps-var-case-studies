Attribute "partialProduct": {
    description: "Specifies if the given product is a partial one",
    defaultValue: "false",
    type: "String"
}

Product "Charcoal": {
  name: "Charcoal",
  isAbstract: true,
  partialProduct: "true"
}

Product "CharcoalActive": {
  name: "CharcoalActive",
  isAbstract: false,
  implements: [ "Charcoal" ],
  excludes: [ "CharcoalBone" ],
  partialProduct: "true"
}

Product "CharcoalBone": {
  name: "CharcoalBone",
  isAbstract: false,
  implements: [ "Charcoal" ],
  excludes: [ "CharcoalActive" ],
  partialProduct: "true"
}

Product "Sand": {
  name: "Sand",
  isAbstract: false,
  partialProduct: "true"
}

Product "Valve": {
  name: "Valve",
  isAbstract: true,
  partialProduct: "true"
}

Product "Valve1": {
  name: "Valve1",
  isAbstract: false,
  implements: [ "Valve" ],
  partialProduct: "true"
}

Product "Valve2": {
  name: "Valve2",
  isAbstract: false,
  implements: [ "Valve" ],
  partialProduct: "true"
}

Product "Tube": {
  name: "Tube",
  isAbstract: true,
  partialProduct: "true"
}

Product "Tube1": {
  name: "Tube1",
  isAbstract: false,
  implements: [ "Tube" ],
  partialProduct: "true"
}

Product "Tube2": {
  name: "Tube2",
  isAbstract: false,
  implements: [ "Tube" ],
  partialProduct: "true"
}

Product "Tube3": {
  name: "Tube3",
  isAbstract: false,
  implements: [ "Tube" ],
  partialProduct: "true"
}

Product "Mount": {
  name: "Mount",
  isAbstract: true,
  partialProduct: "true"
}

Product "Rack1": {
  name: "Rack1",
  isAbstract: false,
  implements: [ "Mount" ],
  excludes: [ "Rack2", "IronFrame" ],
  partialProduct: "true"
}

Product "Rack2": {
  name: "Rack2",
  isAbstract: false,
  implements: [ "Mount" ],
  excludes: [ "Rack1", "IronFrame" ],
  partialProduct: "true"
}

Product "IronFrame": {
  name: "IronFrame",
  isAbstract: false,
  implements: [ "Mount" ],
  excludes: [ "Rack2", "Rack1" ],
  partialProduct: "true"
}

Product "FreshwaterTank": {
  name: "FreshwaterTank",
  isAbstract: true,
  partialProduct: "true"
}

Product "FreshwaterTankS": {
  name: "FreshwaterTankS",
  isAbstract: false,
  implements: [ "FreshwaterTank" ],
  excludes: [ "FreshwaterTankXL" ],
  partialProduct: "true"
}

Product "FreshwaterTankXL": {
  name: "FreshwaterTankXL",
  isAbstract: false,
  implements: [ "FreshwaterTank" ],
  excludes: [ "FreshwaterTankS" ],
  partialProduct: "true"
}

Product "WastewaterTankXL": {
  name: "WastewaterTankXL",
  isAbstract: false,
  partialProduct: "true"
}

Product "Filtertank": {
  name: "Filtertank",
  isAbstract: true,
  children: [ "Sand" ],
  requires: [ "Sand" ],
  partialProduct: "true"
}

Product "FiltertankS": {
  name: "FiltertankS",
  isAbstract: false,
  implements: [ "Filtertank" ],
  excludes: [ "FiltertankXL" ],
  partialProduct: "true"
}

Product "FiltertankXL": {
  name: "FiltertankXL",
  isAbstract: false,
  implements: [ "Filtertank" ],
  excludes: [ "FiltertankS" ],
  partialProduct: "true"
}

Product "CompletedFiltertankSWithActive": {
  name: "CompletedFiltertankSWithActive",
  isAbstract: false,
  children: [ "FiltertankS", "CharcoalActive" ],
  requires: [ "FiltertankS", "CharcoalActive" ],
  partialProduct: "true"
}

Product "CompletedFiltertankXLWithActive": {
  name: "CompletedFiltertankXLWithActive",
  isAbstract: false,
  children: [ "FiltertankXL", "CharcoalActive" ],
  requires: [ "FiltertankXL", "CharcoalActive" ],
  partialProduct: "true"
}

Product "CompletedFiltertankSWithBone": {
  name: "CompletedFiltertankSWithBone",
  isAbstract: false,
  children: [ "FiltertankS", "CharcoalBone" ],
  requires: [ "FiltertankS", "CharcoalBone" ],
  partialProduct: "true"
}

Product "CompletedFiltertankXLWithBone": {
  name: "CompletedFiltertankXLWithBone",
  isAbstract: false,
  children: [ "FiltertankXL", "CharcoalBone" ],
  requires: [ "FiltertankXL", "CharcoalBone" ],
  partialProduct: "true"
}

Product "NanofilterHull": {
  name: "NanofilterHull",
  isAbstract: false
}

Product "NanofilterMaterial": {
  name: "NanofilterMaterial",
  isAbstract: false,
  partialProduct: "true"
}

Product "Membrane": {
  name: "Membrane",
  isAbstract: false,
  partialProduct: "true"
}

Product "Nanofilter": {
  name: "Nanofilter",
  isAbstract: false,
  children: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
  requires: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
  partialProduct: "true"
}

Product "CompletedFreshwaterTank": {
  name: "CompletedFreshwaterTank",
  isAbstract: true,
  children: [ "FreshwaterTank", "Valve1" ],
  requires: [ "FreshwaterTank", "Valve1" ],
  partialProduct: "true"
}

Product "CompletedFreshwaterTankS": {
  name: "CompletedFreshwaterTankS",
  isAbstract: false,
  implements: [ "CompletedFreshwaterTank" ],
  requires: [ "FreshwaterTankS" ],
  excludes: [ "CompletedFreshwaterTankXL" ],
  partialProduct: "true"
}

Product "CompletedFreshwaterTankXL": {
  name: "CompletedFreshwaterTankXL",
  isAbstract: false,
  implements: [ "CompletedFreshwaterTank" ],
  requires: [ "FreshwaterTankXL" ],
  excludes: [ "CompletedFreshwaterTankS" ],
  partialProduct: "true"
}

Product "CompletedWastewaterTank": {
  name: "CompletedWastewaterTank",
  isAbstract: false,
  children: [ "WastewaterTankXL", "Valve2" ],
  requires: [ "WastewaterTankXL", "Valve2" ],
  partialProduct: "true"
}

Product "MountedTanks": {
  name: "MountedTanks",
  isAbstract: true,
  children: [ "Mount", "CompletedFreshwaterTank" ],
  requires: [ "Mount", "CompletedFreshwaterTank" ],
  partialProduct: "true"
}

Product "MountedTanks1": {
  name: "MountedTanks1",
  isAbstract: false,
  implements: [ "MountedTanks" ],
  requires: [ "IronFrame", "CompletedFreshwaterTankS" ],
  excludes: [ "MountedTanks2", "MountedTanks3" ],
  partialProduct: "true"
}

Product "MountedTanks2": {
  name: "MountedTanks2",
  isAbstract: false,
  implements: [ "MountedTanks" ],
  requires: [ "Rack1", "CompletedFreshwaterTankS" ],
  excludes: [ "MountedTanks1", "MountedTanks3" ],
  partialProduct: "true"
}

Product "MountedTanks3": {
  name: "MountedTanks3",
  isAbstract: false,
  implements: [ "MountedTanks" ],
  requires: [ "Rack2", "CompletedFreshwaterTankXL", "CompletedWastewaterTank" ],
  excludes: [ "MountedTanks2", "MountedTanks1" ],
  partialProduct: "true"
}

Product "MountWithTanks": {
  name: "MountWithTanks",
  isAbstract: true,
  children: [ "MountedTanks" ],
  requires: [ "MountedTanks" ],
  partialProduct: "true"
}

Product "MountWithTanks-TypeA": {
  name: "MountWithTanks-TypeA",
  isAbstract: false,
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks1", "CompletedFiltertankSWithBone" ],
  excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks-TypeB": {
  name: "MountWithTanks-TypeB",
  isAbstract: false,
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks1", "CompletedFiltertankSWithActive" ],
  excludes: [ "MountWithTanks-TypeA", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks-TypeC": {
  name: "MountWithTanks-TypeC",
  isAbstract: false,
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks2", "CompletedFiltertankSWithBone" ],
  excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeA", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks-TypeD": {
  name: "MountWithTanks-TypeD",
  isAbstract: false,
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks2", "CompletedFiltertankSWithActive" ],
  excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeA", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks-TypeE": {
  name: "MountWithTanks-TypeE",
  isAbstract: false,
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks3", "CompletedFiltertankXLWithBone" ],
  excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeA", "MountWithTanks-TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks-TypeF": {
  name: "MountWithTanks-TypeF",
  isAbstract: false,
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks3", "CompletedFiltertankXLWithActive" ],
  excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeA" ],
  partialProduct: "true"
}

Product "CompletedTank": {
  name: "CompletedTank",
  isAbstract: true,
  children: [ "MountWithTanks", "Tube1", "Tube2" ],
  requires: [ "MountWithTanks", "Tube1", "Tube2" ],
}

Product "CompletedTank-1": {
  name: "CompletedTank-1",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeA" ],
  excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-2": {
  name: "CompletedTank-2",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeB" ],
  excludes: [ "CompletedTank-1", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-3": {
  name: "CompletedTank-3",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeC", "Nanofilter" ],
  excludes: [ "CompletedTank-2", "CompletedTank-1", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-4": {
  name: "CompletedTank-4",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeD", "Nanofilter" ],
  excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-1", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-5": {
  name: "CompletedTank-5",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeE", "Tube3" ],
  excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-1", "CompletedTank-6", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-6": {
  name: "CompletedTank-6",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeF", "Tube3" ],
  excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-1", "CompletedTank-7", "CompletedTank-8" ]
}

Product "CompletedTank-7": {
  name: "CompletedTank-7",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeE", "Tube3", "Nanofilter" ],
  excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-1", "CompletedTank-8" ]
}

Product "CompletedTank-8": {
  name: "CompletedTank-8",
  isAbstract: false,
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks-TypeF", "Tube3", "Nanofilter" ],
  excludes: [ "CompletedTank-2", "CompletedTank-3", "CompletedTank-4", "CompletedTank-5", "CompletedTank-6", "CompletedTank-7", "CompletedTank-1" ]
}

Process "AssembleFreshwaterTank": {
  name: "Assemble FreshwaterTank",
  isAbstract: true,
  inputs: [ {productId: "FreshwaterTank"}, {productId: "Valve"} ],
  outputs: [ {OP1: {productId: "CompletedTank", costWeight: 1.0}}]
}

Process "AssembleFreshwaterTankS": {
  name: "Assemble FreshwaterTankS",
  isAbstract: false,
  implements: [ "AssembleFreshwaterTank" ],
  inputs: [ {productId: "FreshwaterTankS"}, {productId: "Valve1"} ],
  outputs: [ {OP2: {productId: "CompletedFreshwaterTankS", costWeight: 1.0}}]
}

Process "AssembleFreshwaterTankXL": {
  name: "Assemble FreshwaterTankXL",
  isAbstract: false,
  implements: [ "AssembleFreshwaterTank" ],
  inputs: [ {productId: "FreshwaterTankXL"}, {productId: "Valve1"} ],
  outputs: [ {OP3: {productId: "CompletedFreshwaterTankXL", costWeight: 1.0}}]
}

Process "AssembleNanofilter": {
  name: "Assemble Nanofilter",
  isAbstract: false,
  inputs: [ {productId: "NanofilterHull"}, {productId: "NanofilterMaterial"}, {productId: "Membrane"} ],
  outputs: [ {OP4: {productId: "Nanofilter", costWeight: 1.0}}]
}

Process "AssembleFiltertankS": {
  name: "Assemble FiltertankS",
  isAbstract: false,
  inputs: [ {productId: "FiltertankS"}, {productId: "Sand"}],
  outputs: [ {OP5: {productId: "FiltertankS", costWeight: 1.0}}]
}

Process "AssembleFiltertankXL": {
  name: "Assemble FiltertankXL",
  isAbstract: false,
  inputs: [ {productId: "FiltertankXL"}, {productId: "Sand"}],
  outputs: [ {OP6: {productId: "FiltertankXL", costWeight: 1.0}}]
}

Process "AssembleFiltertankSWithActive": {
  name: "AssembleFiltertankSWithActive",
  isAbstract: false,
  inputs: [ {productId: "FiltertankS"}, {productId: "CharcoalActive"}],
  outputs: [ {OP7: {productId: "CompletedFiltertankSWithActive", costWeight: 1.0}}]
}

Process "AssembleFiltertankXLWithActive": {
  name: "AssembleFiltertankXLWithActive",
  isAbstract: false,
  inputs: [ {productId: "FiltertankXL"}, {productId: "CharcoalActive"}],
  outputs: [ {OP8: {productId: "CompletedFiltertankXLWithActive", costWeight: 1.0}}]
}

Process "AssembleFiltertankSWithABone": {
  name: "AssembleFiltertankSWithBone",
  isAbstract: false,
  inputs: [ {productId: "FiltertankS"}, {productId: "CharcoalBone"}],
  outputs: [ {OP9: {productId: "CompletedFiltertankSWithBone", costWeight: 1.0}}]
}

Process "AssembleFiltertankXLWithABone": {
  name: "AssembleFiltertankXLWithBone",
  isAbstract: false,
  inputs: [ {productId: "FiltertankXL"}, {productId: "CharcoalBone"}],
  outputs: [ {OP10: {productId: "CompletedFiltertankXLWithBone", costWeight: 1.0}}]
}

Process "AssembleWastewaterTank": {
   name: "Assemble WastewaterTank",
   isAbstract: false,
   inputs: [ {productId: "WastewaterTankXL"}, {productId: "Valve2"}],
   outputs: [ {OP11: {productId: "CompletedWastewaterTank", costWeight: 1.0}}]
}

Process "AssembleMountedTank1": {
  name: "AssembleMountedTank1",
  isAbstract: false,
  inputs: [ {productId: "CompletedFreshwaterTankS"}, {productId: "IronFrame"}],
  outputs: [ {OP12: {productId: "MountedTanks1", costWeight: 1.0}}]
}

Process "AssembleMountedTank2": {
  name: "AssembleMountedTank2",
  isAbstract: false,
  inputs: [ {productId: "CompletedFreshwaterTankXL"}, {productId: "Rack1"}],
  outputs: [ {OP13: {productId: "MountedTanks2", costWeight: 1.0}}]
}

Process "AssembleMountedTank3": {
  name: "AssembleMountedTank3",
  isAbstract: false,
  inputs: [ {productId: "CompletedFreshwaterTankS"}, {productId: "Rack2"}, {productId: "CompletedWastewaterTank"}],
  outputs: [ {OP14: {productId: "MountedTanks3", costWeight: 1.0}}]
}

Process "AssembleMountWithTanksA": {
  name: "Assemble MountWithTanksA",
  isAbstract: false,
  inputs: [ {productId: "MountedTanks1"}, {productId: "CompletedFiltertankSWithBone"} ],
  outputs: [ {OP15: {productId: "MountWithTanks-TypeA", costWeight:  1.0}}]
}

Process "AssembleMountWithTanksB": {
  name: "Assemble MountWithTanksB",
  isAbstract: false,
  inputs: [ {productId: "MountedTanks1"}, {productId: "CompletedFiltertankSWithBone"} ],
  outputs: [ {OP16: {productId: "MountWithTanks-TypeB", costWeight:  1.0}}]
}

Process "AssembleMountWithTanksC": {
  name: "Assemble MountWithTansC",
  isAbstract: false,
  inputs: [ {productId: "MountedTanks2"}, {productId: "CompletedFiltertankSWithBone"} ],
  outputs: [ {OP17: {productId: "MountWithTanks-TypeC", costWeight:  1.0}}]
}

Process "AssembleMountWithTanksD": {
  name: "Assemble MountWithTansD",
  isAbstract: false,
  inputs: [ {productId: "MountedTanks2"}, {productId: "CompletedFiltertankSWithActive"} ],
  outputs: [ {OP18: {productId: "MountWithTanks-TypeD", costWeight:  1.0}}]
}

Process "AssembleMountWithTanksE": {
  name: "Assemble MountWithTansE",
  isAbstract: false,
  inputs: [ {productId: "MountedTanks3"}, {productId: "CompletedFiltertankXLWithBone"} ],
  outputs: [ {OP19: {productId: "MountWithTanks-TypeE", costWeight:  1.0}}]
}

Process "AssembleMountWithTanksF": {
  name: "Assemble MountWithTansF",
  isAbstract: false,
  inputs: [ {productId: "MountedTanks3"}, {productId: "CompletedFiltertankXLWithActive"} ],
  outputs: [ {OP20: {productId: "MountWithTanks-TypeF", costWeight:  1.0}}]
}

Process "AssembleCompleteTank1": {
  name: "AssembleCompleteTank1",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks-TypeA"}],
  outputs: [ {OP21: {productId: "CompletedTank-1", costWeight: 1.0}}]
}

Process "AssembleCompleteTank2": {
  name: "AssembleCompleteTank2",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks-TypeB"}],
  outputs: [ {OP22: {productId: "CompletedTank-2", costWeight: 1.0}}]
}

Process "AssembleCompleteTank3": {
  name: "AssembleCompleteTank3",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks-TypeC"}, {productId: "Nanofilter"}],
  outputs: [ {OP23: {productId: "CompletedTank-3", costWeight: 1.0}}]
}

Process "AssembleCompleteTank4": {
  name: "AssembleCompleteTank4",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks-TypeD"}, {productId: "Nanofilter"}],
  outputs: [ {OP24: {productId: "CompletedTank-4", costWeight: 1.0}}]
}

Process "AssembleCompleteTank5": {
  name: "AssembleCompleteTank5",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks-TypeE"}],
  outputs: [ {OP25: {productId: "CompletedTank-5", costWeight: 1.0}}]
}

Process "AssembleCompleteTank6": {
  name: "AssembleCompleteTank6",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks-TypeF"}],
  outputs: [ {OP26: {productId: "CompletedTank-6", costWeight: 1.0}}]
}

Process "AssembleCompleteTank7": {
  name: "AssembleCompleteTank7",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks-TypeE"}, {productId: "Nanofilter"}],
  outputs: [ {OP27: {productId: "CompletedTank-7", costWeight: 1.0}}]
}

Process "AssembleCompleteTank8": {
  name: "AssembleCompleteTank8",
  isAbstract: false,
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks-TypeF"}, {productId: "Nanofilter"}],
  outputs: [ {OP28: {productId: "CompletedTank-8", costWeight: 1.0}}]
}
