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

Product "NanofilterHull": {
  name: "NanofilterHull",
  isAbstract: false,
  partialProduct: "true"
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

Product "CompletedTank": {
  name: "CompletedTank",
  isAbstract: true,
  children: [ "Mount", "FreshwaterTank", "Valve1", "Tube1", "Tube2" ],
  requires: [ "Mount", "FreshwaterTank", "Valve1", "Tube1", "Tube2" ],
}

Product "CompletedTank_1": {
  name: "CompletedTank_1",
  implements: [ "CompletedTank" ],
  requires: [ "IronFrame", "FreshwaterTankS", "FreshwaterTank", "Valve1", "Mount", "FiltertankS", "CharcoalBone" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_2": {
  name: "CompletedTank_2",
  implements: [ "CompletedTank" ],
  requires: [ "IronFrame", "FreshwaterTankS", "FreshwaterTank", "Valve1", "Mount", "FiltertankS", "CharcoalActive" ],
  excludes: [ "CompletedTank_1", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_3": {
  name: "CompletedTank_3",
  implements: [ "CompletedTank" ],
  requires: [ "Rack1", "FreshwaterTankS", "FreshwaterTank", "Valve1", "Mount", "FiltertankS", "CharcoalBone", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_1", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_4": {
  name: "CompletedTank_4",
  implements: [ "CompletedTank" ],
  requires: [ "Rack1", "FreshwaterTankS", "FreshwaterTank", "Valve1", "Mount", "FiltertankS", "CharcoalActive", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_1", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_5": {
  name: "CompletedTank_5",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwaterTankXL", "FreshwaterTank", "Valve1", "WastewaterTankXL", "Valve2", "Mount", "FiltertankXL", "CharcoalBone", "Tube3" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_1", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_6": {
  name: "CompletedTank_6",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwaterTankXL", "FreshwaterTank", "Valve1", "WastewaterTankXL", "Valve2", "Mount", "FiltertankXL", "CharcoalActive", "Tube3" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_1", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_7": {
  name: "CompletedTank_7",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwaterTankXL", "FreshwaterTank", "Valve1", "WastewaterTankXL", "Valve2", "Mount", "FiltertankXL", "CharcoalBone", "Tube3", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_1", "CompletedTank_8" ]
}

Product "CompletedTank_8": {
  name: "CompletedTank_8",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwaterTankXL", "FreshwaterTank", "Valve1", "WastewaterTankXL", "Valve2", "Mount", "FiltertankXL", "CharcoalActive", "Tube3", "Nanofilter" ],
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
  resources: [ { resourceId: "ScrewingTools", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFreshwaterTankS": {
  name: "Assemble FreshwaterTankS",
  implements: [ "AssembleFreshwaterTank" ],
  inputs: [ {productId: "FreshwaterTankS"}, {productId: "Valve1"} ],
  resources: [ { resourceId: "ScrewingTools", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFreshwaterTankXL": {
  name: "Assemble FreshwaterTankXL",
  implements: [ "AssembleFreshwaterTank" ],
  inputs: [ {productId: "FreshwaterTankXL"}, {productId: "Valve1"} ],
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
  isAbstract: true,
  inputs: [ {productId: "FiltertankS"}, {productId: "Sand"}],
  outputs: [ {OP5: {productId: "FiltertankS", costWeight: 1.0}}],
  resources: [ { resourceId: "Batchfeeds", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankSWithActive": {
  name: "AssembleFiltertankSWithActive",
  implements: [ "AssembleFiltertankS" ],
  excludes: ["AssembleFiltertankSWithBone"],
  inputs: [ {productId: "FiltertankS"}, {productId: "CharcoalActive"}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankSWithBone": {
  name: "AssembleFiltertankSWithBone",
  implements: [ "AssembleFiltertankS" ],
  excludes: ["AssembleFiltertankSWithActive"],
  inputs: [ {productId: "FiltertankS"}, {productId: "CharcoalBone"}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankXL": {
  name: "Assemble FiltertankXL",
  isAbstract: true,
  inputs: [ {productId: "FiltertankXL"}, {productId: "Sand"}],
  outputs: [ {OP6: {productId: "FiltertankXL", costWeight: 1.0}}],
  resources: [ { resourceId: "Batchfeeds", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankXLWithActive": {
  name: "AssembleFiltertankXLWithActive",
  implements: [ "AssembleFiltertankXL" ],
  excludes: ["AssembleFiltertankXLWithBone"],
  inputs: [ {productId: "FiltertankXL"}, {productId: "CharcoalActive"}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleFiltertankXLWithBone": {
  name: "AssembleFiltertankXLWithBone",
  implements: [ "AssembleFiltertankXL" ],
  excludes: ["AssembleFiltertankXLWithActive"],
  inputs: [ {productId: "FiltertankXL"}, {productId: "CharcoalBone"}],
  resources: [ { resourceId: "DryBatchfeeds", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleWastewaterTank": {
  name: "Assemble WastewaterTank",
  inputs: [ {productId: "WastewaterTankXL"}, {productId: "Valve2"}],
  resources: [ { resourceId: "OpenendNutrunner", minCost: 50, maxCost: 100 }, { resourceId: "ChainHoist", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountedTank": {
  name: "Assemble MountedTank",
  isAbstract: true,
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountedTank1": {
  name: "AssembleMountedTank1",
  implements: ["AssembleMountedTank"],
  requires: [ "AssembleFreshwaterTankS" ],
  inputs: [ {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"} , {productId: "IronFrame"}]
}

Process "AssembleMountedTank2": {
  name: "AssembleMountedTank2",
  implements: ["AssembleMountedTank"],
  requires: [ "AssembleFreshwaterTankXL" ],
  inputs: [ {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Rack1"}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountedTank3": {
  name: "AssembleMountedTank3",
  implements: ["AssembleMountedTank"],
  requires: [ "AssembleFreshwaterTankS", "AssembleWastewaterTank" ],
  inputs: [ {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Rack2"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}]
}

Process "AssembleMountWithTanksA": {
  name: "Assemble MountWithTanksA",
  requires: [ "AssembleMountedTank1", "AssembleFiltertankSWithBone" ],
  inputs: [ {productId: "IronFrame"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalBone"} ],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksB": {
  name: "Assemble MountWithTanksB",
  requires: [ "AssembleMountedTank1", "AssembleFiltertankSWithActive" ],
  inputs: [ {productId: "IronFrame"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalActive"} ],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksC": {
  name: "Assemble MountWithTansC",
  requires: [ "AssembleMountedTank2", "AssembleFiltertankSWithBone" ],
  inputs: [ {productId: "Rack1"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalBone"} ],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksD": {
  name: "Assemble MountWithTansD",
  requires: [ "AssembleMountedTank2", "AssembleFiltertankSWithActive"],
  inputs: [ {productId: "Rack1"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalActive"} ],
  resources: [ { resourceId: "HandheldNutrunner", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksE": {
  name: "Assemble MountWithTansE",
  requires: [ "AssembleMountedTank3", "AssembleFiltertankXLWithBone"],
  inputs: [ {productId: "Rack2"}, {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}, {productId: "Mount"}, {productId: "FiltertankXL"}, {productId: "CharcoalBone"} ],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ", minCost: 50, maxCost: 100 } ]
}

Process "AssembleMountWithTanksF": {
  name: "Assemble MountWithTansF",
  requires: [ "AssembleMountedTank3", "AssembleFiltertankXLWithBone"],
  inputs: [ {productId: "Rack2"}, {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}, {productId: "Mount"}, {productId: "FiltertankXL"}, {productId: "CharcoalActive"} ],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank1": {
  name: "AssembleCompleteTank1",
  requires: [ "AssembleMountWithTanksF"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "IronFrame"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalBone"} ],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank2": {
  name: "AssembleCompleteTank2",
  requires: [ "AssembleMountWithTanksB"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "IronFrame"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalActive"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank3": {
  name: "AssembleCompleteTank3",
  requires: [ "AssembleMountWithTanksC"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Rack1"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalBone"}, {productId: "Nanofilter"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank4": {
  name: "AssembleCompleteTank4",
  requires: [ "AssembleMountWithTanksD"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Rack1"}, {productId: "FreshwaterTankS"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "Mount"}, {productId: "FiltertankS"}, {productId: "CharcoalActive"}, {productId: "Nanofilter"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank5": {
  name: "AssembleCompleteTank5",
  requires: [ "AssembleMountWithTanksE"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "Rack2"}, {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}, {productId: "Mount"}, {productId: "FiltertankXL"}, {productId: "CharcoalBone"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank6": {
  name: "AssembleCompleteTank6",
  requires: [ "AssembleMountWithTanksF"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "Rack2"}, {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}, {productId: "Mount"}, {productId: "FiltertankXL"}, {productId: "CharcoalActive"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank7": {
  name: "AssembleCompleteTank7",
  requires: [ "AssembleMountWithTanksE"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "Rack2"}, {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}, {productId: "Mount"}, {productId: "FiltertankXL"}, {productId: "CharcoalBone"}, {productId: "Nanofilter"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}

Process "AssembleCompleteTank8": {
  name: "AssembleCompleteTank8",
  requires: [ "AssembleMountWithTanksF"],
  inputs: [ {productId: "Tube1"}, {productId: "Tube2"}, {productId: "Tube3"}, {productId: "Rack2"}, {productId: "FreshwaterTankXL"}, {productId: "FreshwaterTank"}, {productId: "Valve1"}, {productId: "WastewaterTankXL"}, {productId: "Valve2"}, {productId: "Mount"}, {productId: "FiltertankXL"}, {productId: "CharcoalActive"}, {productId: "Nanofilter"}],
  resources: [ { resourceId: "PIT_45", minCost: 50, maxCost: 100 } ]
}
