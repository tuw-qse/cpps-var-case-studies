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
  implements: [ "Charcoal" ],
  excludes: [ "CharcoalBone" ],
  partialProduct: "true"
}

Product "CharcoalBone": {
  name: "CharcoalBone",
  implements: [ "Charcoal" ],
  excludes: [ "CharcoalActive" ],
  partialProduct: "true"
}

Product "Sand": {
  name: "Sand",
  partialProduct: "true"
}

Product "Valve": {
  name: "Valve",
  isAbstract: true,
  partialProduct: "true"
}

Product "Valve1": {
  name: "Valve1",
  implements: [ "Valve" ],
  partialProduct: "true"
}

Product "Valve2": {
  name: "Valve2",
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
  implements: [ "Tube" ],
  partialProduct: "true"
}

Product "Tube2": {
  name: "Tube2",
  implements: [ "Tube" ],
  partialProduct: "true"
}

Product "Tube3": {
  name: "Tube3",
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
  implements: [ "Mount" ],
  excludes: [ "Rack2", "IronFrame" ],
  partialProduct: "true"
}

Product "Rack2": {
  name: "Rack2",
  implements: [ "Mount" ],
  excludes: [ "Rack1", "IronFrame" ],
  partialProduct: "true"
}

Product "IronFrame": {
  name: "IronFrame",
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
  implements: [ "FreshwaterTank" ],
  excludes: [ "FreshwaterTankXL" ],
  partialProduct: "true"
}

Product "FreshwaterTankXL": {
  name: "FreshwaterTankXL",
  implements: [ "FreshwaterTank" ],
  excludes: [ "FreshwaterTankS" ],
  partialProduct: "true"
}

Product "WastewaterTankXL": {
  name: "WastewaterTankXL",
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
  implements: [ "Filtertank" ],
  excludes: [ "FiltertankXL" ],
  partialProduct: "true"
}

Product "FiltertankXL": {
  name: "FiltertankXL",
  implements: [ "Filtertank" ],
  excludes: [ "FiltertankS" ],
  partialProduct: "true"
}

Product "CompletedFiltertankSWithActive": {
  name: "CompletedFiltertankSWithActive",
  children: [ "FiltertankS", "CharcoalActive" ],
  requires: [ "FiltertankS", "CharcoalActive" ],
  partialProduct: "true"
}

Product "CompletedFiltertankXLWithActive": {
  name: "CompletedFiltertankXLWithActive",
  children: [ "FiltertankXL", "CharcoalActive" ],
  requires: [ "FiltertankXL", "CharcoalActive" ],
  partialProduct: "true"
}

Product "CompletedFiltertankSWithBone": {
  name: "CompletedFiltertankSWithBone",
  children: [ "FiltertankS", "CharcoalBone" ],
  requires: [ "FiltertankS", "CharcoalBone" ],
  partialProduct: "true"
}

Product "CompletedFiltertankXLWithBone": {
  name: "CompletedFiltertankXLWithBone",
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
  partialProduct: "true"
}

Product "Membrane": {
  name: "Membrane",
  partialProduct: "true"
}

Product "Nanofilter": {
  name: "Nanofilter",
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
  implements: [ "CompletedFreshwaterTank" ],
  requires: [ "FreshwaterTankS" ],
  excludes: [ "CompletedFreshwaterTankXL" ],
  partialProduct: "true"
}

Product "CompletedFreshwaterTankXL": {
  name: "CompletedFreshwaterTankXL",
  implements: [ "CompletedFreshwaterTank" ],
  requires: [ "FreshwaterTankXL" ],
  excludes: [ "CompletedFreshwaterTankS" ],
  partialProduct: "true"
}

Product "CompletedWastewaterTank": {
  name: "CompletedWastewaterTank",
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
  implements: [ "MountedTanks" ],
  requires: [ "IronFrame", "CompletedFreshwaterTankS" ],
  excludes: [ "MountedTanks2", "MountedTanks3" ],
  partialProduct: "true"
}

Product "MountedTanks2": {
  name: "MountedTanks2",
  implements: [ "MountedTanks" ],
  requires: [ "Rack1", "CompletedFreshwaterTankS" ],
  excludes: [ "MountedTanks1", "MountedTanks3" ],
  partialProduct: "true"
}

Product "MountedTanks3": {
  name: "MountedTanks3",
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

Product "MountWithTanks_TypeA": {
  name: "MountWithTanks_TypeA",
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks1", "CompletedFiltertankSWithBone" ],
  excludes: [ "MountWithTanks_TypeB", "MountWithTanks_TypeC", "MountWithTanks_TypeD", "MountWithTanks_TypeE", "MountWithTanks_TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks_TypeB": {
  name: "MountWithTanks_TypeB",
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks1", "CompletedFiltertankSWithActive" ],
  excludes: [ "MountWithTanks_TypeA", "MountWithTanks_TypeC", "MountWithTanks_TypeD", "MountWithTanks_TypeE", "MountWithTanks_TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks_TypeC": {
  name: "MountWithTanks_TypeC",
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks2", "CompletedFiltertankSWithBone" ],
  excludes: [ "MountWithTanks_TypeB", "MountWithTanks_TypeA", "MountWithTanks_TypeD", "MountWithTanks_TypeE", "MountWithTanks_TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks_TypeD": {
  name: "MountWithTanks_TypeD",
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks2", "CompletedFiltertankSWithActive" ],
  excludes: [ "MountWithTanks_TypeB", "MountWithTanks_TypeC", "MountWithTanks_TypeA", "MountWithTanks_TypeE", "MountWithTanks_TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks_TypeE": {
  name: "MountWithTanks_TypeE",
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks3", "CompletedFiltertankXLWithBone" ],
  excludes: [ "MountWithTanks_TypeB", "MountWithTanks_TypeC", "MountWithTanks_TypeD", "MountWithTanks_TypeA", "MountWithTanks_TypeF" ],
  partialProduct: "true"
}

Product "MountWithTanks_TypeF": {
  name: "MountWithTanks_TypeF",
  implements: [ "MountWithTanks" ],
  requires: [ "MountedTanks3", "CompletedFiltertankXLWithActive" ],
  excludes: [ "MountWithTanks_TypeB", "MountWithTanks_TypeC", "MountWithTanks_TypeD", "MountWithTanks_TypeE", "MountWithTanks_TypeA" ],
  partialProduct: "true"
}

Product "CompletedTank": {
  name: "CompletedTank",
  isAbstract: true,
  children: [ "MountWithTanks", "Tube1", "Tube2" ],
  requires: [ "MountWithTanks", "Tube1", "Tube2" ],
}

Product "CompletedTank_1": {
  name: "CompletedTank_1",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeA" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_2": {
  name: "CompletedTank_2",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeB" ],
  excludes: [ "CompletedTank_1", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_3": {
  name: "CompletedTank_3",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeC", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_1", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_4": {
  name: "CompletedTank_4",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeD", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_1", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_5": {
  name: "CompletedTank_5",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeE", "Tube3" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_1", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_6": {
  name: "CompletedTank_6",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeF", "Tube3" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_1", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_7": {
  name: "CompletedTank_7",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeE", "Tube3", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_1", "CompletedTank_8" ]
}

Product "CompletedTank_8": {
  name: "CompletedTank_8",
  implements: [ "CompletedTank" ],
  requires: [ "MountWithTanks_TypeF", "Tube3", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_1" ]
}

Resource "PressinTools": {
  name: "PressinTools",
  isAbstract: true
}

Resource "PIT_10": {
  name: "PIT_10",
  implements: [ "PressinTools" ]
}

Resource "PIT_45": {
  name: "PIT_45",
  implements: [ "PressinTools" ]
}

Resource "ScrewingTools": {
  name: "ScrewingTools",
  isAbstract: true
}

Resource "HandheldNutrunner": {
  name: "HandheldNutrunner",
  implements: [ "ScrewingTools" ]
}

Resource "HandheldNutrunner_DFL651FZ": {
  name: "HandheldNutrunner_DFL651FZ",
  implements: [ "HandheldNutrunner" ]
}

Resource "HandheldNutrunner_DFL063FZ": {
  name: "HandheldNutrunner_DFL063FZ",
  implements: [ "HandheldNutrunner" ]
}

Resource "OpenendNutrunner": {
  name: "OpenendNutrunner",
  implements: [ "ScrewingTools" ]
}

Resource "Lifts": {
  name: "Lifts",
  isAbstract: true
}

Resource "ChainHoist": {
  name: "ChainHoist",
  implements: [ "Lifts" ]
}

Resource "Batchfeeds": {
  name: "Batchfeeds",
  isAbstract: true
}

Resource "Wetfeeds": {
  name: "Wetfeeds",
  implements: [ "Batchfeeds" ] 
}

Resource "DryBatchfeeds": {
  name: "DryBatchfeeds",
  implements: [ "Batchfeeds" ] 
}

Process "AssembleFreshwaterTank": {
  name: "Assemble FreshwaterTank",
  isAbstract: true,
  inputs: [ {productId: "FreshwaterTank"}, {productId: "Valve"} ],
  outputs: [ {OP1: {productId: "CompletedTank", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingTools", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFreshwaterTankS": {
  name: "Assemble FreshwaterTankS",
  implements: [ "AssembleFreshwaterTank" ],
  inputs: [ {productId: "FreshwaterTankS"}, {productId: "Valve1"} ],
  outputs: [ {OP2: {productId: "CompletedFreshwaterTankS", costWeight: 1.0}}],
  resources: [ { resourceId: "ScrewingTools", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFreshwaterTankXL": {
  name: "Assemble FreshwaterTankXL",
  implements: [ "AssembleFreshwaterTank" ],
  inputs: [ {productId: "FreshwaterTankXL"}, {productId: "Valve1"} ],
  outputs: [ {OP3: {productId: "CompletedFreshwaterTankXL", costWeight: 1.0}}],
  resources: [ { resourceId: "OpenendNutrunner", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleNanofilter": {
  name: "Assemble Nanofilter",
  inputs: [ {productId: "NanofilterHull"}, {productId: "NanofilterMaterial"}, {productId: "Membrane"} ],
  outputs: [ {OP4: {productId: "Nanofilter", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_10", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankS": {
  name: "Assemble FiltertankS",
  inputs: [ {productId: "FiltertankS"}, {productId: "Sand"}],
  outputs: [ {OP5: {productId: "FiltertankS", costWeight: 1.0}}],
  resources: [ { resourceId: "Batchfeeds", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankXL": {
  name: "Assemble FiltertankXL",
  inputs: [ {productId: "FiltertankXL"}, {productId: "Sand"}],
  outputs: [ {OP6: {productId: "FiltertankXL", costWeight: 1.0}}],
  resources: [ { resourceId: "Batchfeeds", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankSWithActive": {
  name: "AssembleFiltertankSWithActive",
  requires: [ "AssembleFiltertankS" ],
  inputs: [ {productId: "FiltertankS"}, {productId: "CharcoalActive"}],
  outputs: [ {OP7: {productId: "CompletedFiltertankSWithActive", costWeight: 1.0}}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankXLWithActive": {
  name: "AssembleFiltertankXLWithActive",
  requires: [ "AssembleFiltertankXL" ],
  inputs: [ {productId: "FiltertankXL"}, {productId: "CharcoalActive"}],
  outputs: [ {OP8: {productId: "CompletedFiltertankXLWithActive", costWeight: 1.0}}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankSWithBone": {
  name: "AssembleFiltertankSWithBone",
  requires: [ "AssembleFiltertankS" ],
  inputs: [ {productId: "FiltertankS"}, {productId: "CharcoalBone"}],
  outputs: [ {OP9: {productId: "CompletedFiltertankSWithBone", costWeight: 1.0}}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankXLWithBone": {
  name: "AssembleFiltertankXLWithBone",
  requires: [ "AssembleFiltertankXL" ],
  inputs: [ {productId: "FiltertankXL"}, {productId: "CharcoalBone"}],
  outputs: [ {OP10: {productId: "CompletedFiltertankXLWithBone", costWeight: 1.0}}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleWastewaterTank": {
   name: "Assemble WastewaterTank",
    inputs: [ {productId: "WastewaterTankXL"}, {productId: "Valve2"}],
   outputs: [ {OP11: {productId: "CompletedWastewaterTank", costWeight: 1.0}}],
  resources: [ { resourceId: "OpenendNutrunner", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountedTank1": {
  name: "AssembleMountedTank1",
  requires: [ "AssembleFreshwaterTankS" ],
  inputs: [ {productId: "CompletedFreshwaterTankS"}, {productId: "IronFrame"}],
  outputs: [ {OP12: {productId: "MountedTanks1", costWeight: 1.0}}],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountedTank2": {
  name: "AssembleMountedTank2",
  requires: [ "AssembleFreshwaterTankXL" ],
  inputs: [ {productId: "CompletedFreshwaterTankXL"}, {productId: "Rack1"}],
  outputs: [ {OP13: {productId: "MountedTanks2", costWeight: 1.0}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountedTank3": {
  name: "AssembleMountedTank3",
  requires: [ "AssembleFreshwaterTankS", "AssembleWastewaterTank" ],
  inputs: [ {productId: "CompletedFreshwaterTankS"}, {productId: "Rack2"}, {productId: "CompletedWastewaterTank"}],
  outputs: [ {OP14: {productId: "MountedTanks3", costWeight: 1.0}}],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksA": {
  name: "Assemble MountWithTanksA",
  requires: [ "AssembleMountedTank1", "AssembleFiltertankSWithBone" ],
  inputs: [ {productId: "MountedTanks1"}, {productId: "CompletedFiltertankSWithBone"} ],
  outputs: [ {OP15: {productId: "MountWithTanks_TypeA", costWeight:  1.0}}],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksB": {
  name: "Assemble MountWithTanksB",
  requires: [ "AssembleMountedTank1", "AssembleFiltertankSWithActive" ],
  inputs: [ {productId: "MountedTanks1"}, {productId: "CompletedFiltertankSWithActive"} ],
  outputs: [ {OP16: {productId: "MountWithTanks_TypeB", costWeight:  1.0}}],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksC": {
  name: "Assemble MountWithTansC",
  requires: [ "AssembleMountedTank2", "AssembleFiltertankSWithBone" ],
  inputs: [ {productId: "MountedTanks2"}, {productId: "CompletedFiltertankSWithBone"} ],
  outputs: [ {OP17: {productId: "MountWithTanks_TypeC", costWeight:  1.0}}],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksD": {
  name: "Assemble MountWithTansD",
  requires: [ "AssembleMountedTank2", "AssembleFiltertankSWithActive"],
  inputs: [ {productId: "MountedTanks2"}, {productId: "CompletedFiltertankSWithActive"} ],
  outputs: [ {OP18: {productId: "MountWithTanks_TypeD", costWeight:  1.0}}],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksE": {
  name: "Assemble MountWithTansE",
  requires: [ "AssembleMountedTank3", "AssembleFiltertankXLWithBone"],
  inputs: [ {productId: "MountedTanks3"}, {productId: "CompletedFiltertankXLWithBone"} ],
  outputs: [ {OP19: {productId: "MountWithTanks_TypeE", costWeight:  1.0}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksF": {
  name: "Assemble MountWithTansF",
  requires: [ "AssembleMountedTank3", "AssembleFiltertankXLWithBone"],
  inputs: [ {productId: "MountedTanks3"}, {productId: "CompletedFiltertankXLWithActive"} ],
  outputs: [ {OP20: {productId: "MountWithTanks_TypeF", costWeight:  1.0}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank1": {
  name: "AssembleCompleteTank1",
  requires: [ "AssembleMountWithTanksF"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks_TypeA"}],
  outputs: [ {OP21: {productId: "CompletedTank_1", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank2": {
  name: "AssembleCompleteTank2",
  requires: [ "AssembleMountWithTanksB"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks_TypeB"}],
  outputs: [ {OP22: {productId: "CompletedTank_2", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank3": {
  name: "AssembleCompleteTank3",
  requires: [ "AssembleMountWithTanksC"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks_TypeC"}, {productId: "Nanofilter"}],
  outputs: [ {OP23: {productId: "CompletedTank_3", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank4": {
  name: "AssembleCompleteTank4",
  requires: [ "AssembleMountWithTanksD"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "MountWithTanks_TypeD"}, {productId: "Nanofilter"}],
  outputs: [ {OP24: {productId: "CompletedTank_4", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank5": {
  name: "AssembleCompleteTank5",
  requires: [ "AssembleMountWithTanksE"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks_TypeE"}],
  outputs: [ {OP25: {productId: "CompletedTank_5", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank6": {
  name: "AssembleCompleteTank6",
  requires: [ "AssembleMountWithTanksF"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks_TypeF"}],
  outputs: [ {OP26: {productId: "CompletedTank_6", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank7": {
  name: "AssembleCompleteTank7",
  requires: [ "AssembleMountWithTanksE"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks_TypeE"}, {productId: "Nanofilter"}],
  outputs: [ {OP27: {productId: "CompletedTank_7", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank8": {
  name: "AssembleCompleteTank8",
  requires: [ "AssembleMountWithTanksF"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "MountWithTanks_TypeF"}, {productId: "Nanofilter"}],
  outputs: [ {OP28: {productId: "CompletedTank_8", costWeight: 1.0}}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}
