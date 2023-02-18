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

Product "FreshwaterTankModule": {
  name: "FreshwaterTankModule",
  isAbstract: true,
  requires: [ "Freshwatertank" ],
  partialProduct: "true"
}

Product "FreshwaterTankSModule": {
  name: "FreshwaterTankSModule",
  isAbstract: true,
  implements: [ "FreshwaterTankModule" ],
  requires: [ "FreshwatertankS", "Valve1" ],
  excludes: [ "FreshwatertankXLModule" ],
  partialProduct: "true"
}

Product "FreshwatertankXLModule": {
  name: "FreshwatertankXLModule",
  implements: [ "FreshwaterTankModule" ],
  requires: [ "FreshwatertankXL", "Valve1" ],
  excludes: [ "FreshwaterTankSModule" ],
  partialProduct: "true"
}

Product "WastewaterTankXL": {
  name: "WastewaterTankXL",
  partialProduct: "true"
}

Product "WastewaterTankXLModule": {
  name: "WastewaterTankXLModule",
  partialProduct: "true",
  requires: [ "WastewaterTankXL", "Valve2" ]
}

Product "FilterTank": {
  name: "FilterTank",
  isAbstract: true,
  requires: [ "Sand" ],
  partialProduct: "true"
}

Product "FilterTankS": {
  name: "FilterTankS",
  implements: [ "FilterTank" ],
  excludes: [ "FilterTankXL" ],
  partialProduct: "true"
}

Product "FilterTankXL": {
  name: "FilterTankXL",
  implements: [ "FilterTank" ],
  excludes: [ "FilterTankS" ],
  partialProduct: "true"
}

Product "FilterTankModule": {
  name: "FilterTankModule",
  isAbstract: true,
  requires: [ "FilterTank" ],
  partialProduct: "true"
}

Product "FilterTankSModule": {
  name: "FilterTankSModule",
  isAbstract: true,
  implements: [ "FilterTankModule" ],
  requires: [ "FilterTankS" ],
  excludes: [ "FilterTankXLModule" ],
  partialProduct: "true"
}

Product "CBFilterTankSModule": {
  name: "CBFilterTankSModule",
  implements: [ "FilterTankSModule" ],
  requires: [ "FilterTankS", "CharcoalBone" ],
  excludes: [ "CAFilterTankSModule" ],
  partialProduct: "true"
}

Product "CAFilterTankSModule": {
  name: "CAFilterTankSModule",
  implements: [ "FilterTankSModule" ],
  requires: [ "FilterTankS", "CharcoalActive" ],
  excludes: [ "CBFilterTankSModule" ],
  partialProduct: "true"
}

Product "FilterTankXLModule": {
  name: "FilterTankXLModule",
  implements: [ "FilterTankModule" ],
  requires: [ "FilterTankXL" ],
  excludes: [ "FilterTankSModule" ],
  partialProduct: "true"
}

Product "CBFilterTankXLModule": {
  name: "CBFilterTankXLModule",
  implements: [ "FilterTankXLModule" ],
  requires: [ "FilterTankXL", "CharcoalBone" ],
  excludes: [ "CAFilterTankXLModule" ],
  partialProduct: "true"
}

Product "CAFilterTankXLModule": {
  name: "CAFilterTankXLModule",
  implements: [ "FilterTankXLModule" ],
  requires: [ "FilterTankXL", "CharcoalActive" ],
  excludes: [ "CBFilterTankXLModule" ],
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
  children: [ "Mount", "FreshwaterTankModule", "FilterTankModule", "Tube1", "Tube2" ],
  requires: [ "Mount", "FreshwaterTankModule", "FilterTankModule", "Tube1", "Tube2" ],
}

Product "CompletedTank_1": {
  name: "CompletedTank_1",
  implements: [ "CompletedTank" ],
  requires: [ "IronFrame", "FreshwaterTankSModule", "CBFilterTankSModule" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_2": {
  name: "CompletedTank_2",
  implements: [ "CompletedTank" ],
  requires: [ "IronFrame", "FreshwaterTankSModule", "CAFilterTankSModule" ],
  excludes: [ "CompletedTank_1", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_3": {
  name: "CompletedTank_3",
  implements: [ "CompletedTank" ],
  requires: [ "Rack1", "FreshwaterTankSModule", "CBFilterTankSModule", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_1", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_4": {
  name: "CompletedTank_4",
  implements: [ "CompletedTank" ],
  requires: [ "Rack1", "FreshwaterTankSModule", "CAFilterTankSModule", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_1", "CompletedTank_5", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_5": {
  name: "CompletedTank_5",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwatertankXLModule", "WastewaterTankXLModule", "CBFilterTankXLModule", "Tube3" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_1", "CompletedTank_6", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_6": {
  name: "CompletedTank_6",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwatertankXLModule", "WastewaterTankXLModule", "CAFilterTankXLModule", "Tube3" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_1", "CompletedTank_7", "CompletedTank_8" ]
}

Product "CompletedTank_7": {
  name: "CompletedTank_7",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwatertankXLModule", "WastewaterTankXLModule", "CBFilterTankXLModule", "Tube3", "Nanofilter" ],
  excludes: [ "CompletedTank_2", "CompletedTank_3", "CompletedTank_4", "CompletedTank_5", "CompletedTank_6", "CompletedTank_1", "CompletedTank_8" ]
}

Product "CompletedTank_8": {
  name: "CompletedTank_8",
  implements: [ "CompletedTank" ],
  requires: [ "Rack2", "FreshwatertankXLModule", "WastewaterTankXLModule", "CAFilterTankXLModule", "Tube3", "Nanofilter" ],
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

Process "AssembleFreshwaterTankModule": {
  name: "Assemble FreshwaterTankModule",
  isAbstract: true,
  inputs: [ {productId: "FreshwaterTankModule"}, {productId: "Valve1"} ],
  resources: [ { resourceId: "ScrewingTools"} ]
}

Process "AssembleFreshwaterTankSModule": {
  name: "Assemble FreshwaterTankSModule",
  implements: [ "AssembleFreshwaterTankModule" ],
  inputs: [ {productId: "FreshwaterTankS"}, {productId: "Valve1"} ],
  outputs: [ {OP1: {productId: "FreshwaterTankSModule"}}],
  resources: [ { resourceId: "ScrewingTools"} ]
}

Process "AssembleFreshwaterTankXLModule": {
  name: "Assemble FreshwatertankXLModule",
  implements: [ "AssembleFreshwaterTankModule" ],
  inputs: [ {productId: "FreshwaterTankXL"}, {productId: "Valve1"} ],
  outputs: [ {OP2: {productId: "FreshwatertankXLModule"}}],
  resources: [ { resourceId: "OpenendNutrunner"}, { resourceId: "ChainHoist"} ]
}


Process "FillFilterTankSand": {
  name: "Fill FilterTank with Sand",
  requires: [ "AssembleFreshwaterTankSModule" ],
  inputs: [ {productId: "FilterTank"}, {productId: "Sand"}],
  outputs: [ {OP4: {productId: "FilterTank"}}],
  resources: [ {resourceId: "Wetfeeds"}]
}

Process "AssembleNanofilter": {
  name: "Assemble Nanofilter",
  inputs: [ {productId: "NanofilterHull"}, {productId: "NanofilterMaterial"}, {productId: "Membrane"} ],
  outputs: [ {OP3: {productId: "Nanofilter"}}],
  resources: [ { resourceId: "PIT_10"} ]
}

Process "FillFilterTankModuleCharcoal": {
  name: "Fill FilterTankModule with Charcoal",
  isAbstract: true,
  requires: [ "AssembleFreshwaterTankSModule" ],
  inputs: [ {productId: "FilterTank"}],
  resources: [ { resourceId: "Batchfeeds"} ]
}

Process "FillFilterTankSModuleCharcoal": {
  name: "Fill FilterTankSModule with Charcoal",
  isAbstract: true,
  implements: ["FillFilterTankModuleCharcoal"],
  excludes: ["FillFilterTankXLModuleCharcoal"],
  requires: [ "AssembleFreshwaterTankSModule" ],
  inputs: [ {productId: "FilterTankS"}],
  outputs: [ {OP5: {productId: "FilterTankSModule"}}]
}

Process "FillFilterTankSModuleCA": {
  name: "Fill FilterTankSModule with CharcoalActive",
  implements: [ "FillFilterTankSModuleCharcoal" ],
  excludes: ["FillFilterTankSModuleCB"],
  requires: [ "AssembleFreshwaterTankSModule" ],
  inputs: [ {productId: "FilterTankS"}, {productId: "CharcoalActive"}],
  outputs: [ {OP6: {productId: "CAFilterTankSModule"}}],
  resources: [ { resourceId: "DryBatchfeeds"} ]
}

Process "FillFilterTankSModuleCB": {
  name: "Fill FilterTankSModule with CharcoalActive",
  implements: [ "FillFilterTankSModuleCharcoal" ],
  excludes: ["FillFilterTankSModuleCA"],
  requires: [ "AssembleFreshwaterTankSModule" ],
  inputs: [ {productId: "FilterTankS"}, {productId: "CharcoalBone"}],
  resources: [ { resourceId: "DryBatchfeeds"} ]
}

Process "FillFilterTankXLModuleCharcoal": {
  name: "Fill FilterTankXLModule with CharcoalActive",
  isAbstract: true,
  implements: ["FillFilterTankModuleCharcoal"],
  excludes: ["FillFilterTankSModuleCharcoal"],
  requires: [ "AssembleFreshwaterTankXLModule" ],
  inputs: [ {productId: "FilterTankXL"}, {productId: "Sand"}],
  outputs: [ {OP7: {productId: "FilterTankXLModule"}}],
  resources: [ { resourceId: "ChainHoist"} ]
}

Process "FillFilterTankXLModuleCA": {
  name: "Fill FilterTankXLModule with CharcoalActive",
  implements: [ "FillFilterTankXLModuleCB" ],
  excludes: ["AssembleFilterTankXLWithBone"],
  requires: [ "AssembleFreshwaterTankXLModule" ],
  inputs: [ {productId: "FilterTankXL"}, {productId: "CharcoalActive"}],
  outputs: [ {OP8: {productId: "CAFilterTankXLModule"}}],
  resources: [ { resourceId: "DryBatchfeeds"}, { resourceId: "ChainHoist"} ]
}

Process "FillFilterTankXLModuleCB": {
  name: "Fill FilterTankXLModule with CharcoalBone",
  implements: [ "FillFilterTankXLModuleCharcoal" ],
  excludes: ["FillFilterTankXLModuleCA"],
  requires: [ "AssembleFreshwaterTankXLModule" ],
  inputs: [ {productId: "FilterTankXL"}, {productId: "CharcoalBone"}],
  outputs: [ {OP9: {productId: "CBFilterTankXLModule"}}],
  resources: [ { resourceId: "DryBatchfeeds"}, { resourceId: "ChainHoist"} ]
}

Process "AssembleWastewaterTankXLModule": {
  name: "AssembleWastewaterTankXLModule",
  requires: [ "AssembleWastewaterTankXLModule" ],
  inputs: [ {productId: "WastewaterTankXL"}, {productId: "Valve2"}],
  outputs: [ {OP10: {productId: "WastewaterTankXLModule"}}],
  resources: [ { resourceId: "HandheldNutrunner"}, { resourceId: "ChainHoist"} ]
}

Process "AssembleMountedFreshwaterTank": {
  name: "Assemble MountedTank",
  isAbstract: true,
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "AssembleMountedFreshwaterTankSIronFrame": {
  name: "AssembleMountedFreshwaterTankSIronFrame",
  implements: ["AssembleMountedFreshwaterTank"],
  requires: [ "AssembleFreshwaterTankSModule" ],
  excludes: [ "AssembleMountedFreshwaterTankSRack1", "AssembleMountedFreshwaterTankXLRack2" ],
  inputs: [ {productId: "FreshwaterTankSModule"} , {productId: "IronFrame"}],
  outputs: [ {OP11: {productId: "CompletedTank"}}],
}

Process "AssembleMountedFreshwaterTankSRack1": {
  name: "AssembleMountedFreshwaterTankSRack1",
  implements: ["AssembleMountedFreshwaterTank"],
  requires: [ "AssembleFreshwaterTankSModule" ],
  excludes: [ "AssembleMountedFreshwaterTankSIronFrame", "AssembleMountedFreshwaterTankXLRack2" ],
  inputs: [ {productId: "FreshwaterTankSModule"}, {productId: "Rack1"}],
  outputs: [ {OP12: {productId: "CompletedTank"}}],
}

Process "AssembleMountedFreshwaterTankXLRack2": {
  name: "AssembleMountedFreshwaterTankXLRack2",
  implements: ["AssembleMountedFreshwaterTank"],
  requires: [ "AssembleFreshwaterTankXLModule", "AssembleWastewaterTankXLModule" ],
  excludes: [ "AssembleMountedFreshwaterTankSIronFrame", "AssembleMountedFreshwaterTankSRack1" ],
  inputs: [ {productId: "FreshwatertankXLModule"}, {productId: "WastewaterTankXLModule"}, {productId: "Rack2"}],
  outputs: [ {OP13: {productId: "CompletedTank"}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "AssembleMountedFreshwaterTankXLRack2": {
  name: "AssembleMountedFreshwaterTankXLRack2",
  implements: ["AssembleMountedFreshwaterTank"],
  requires: [ "AssembleFreshwaterTankXLModule" ],
  excludes: [ "AssembleMountedFreshwaterTankSIronFrame", "AssembleMountedFreshwaterTankSRack1" ],
  inputs: [ {productId: "FreshwatertankXLModule"}, {productId: "Rack2"}],
  outputs: [ {OP14: {productId: "CompletedTank"}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "AssembleMountedWastewaterTankXLRack2": {
  name: "AssembleMountedWastewaterTankXLRack2",
  requires: [ "AssembleWastewaterTankXLModule" ],
  inputs: [ {productId: "WastewaterTankXLModule"}, {productId: "Rack2"}],
  outputs: [ {OP15: {productId: "CompletedTank"}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "AssembleMountedNanofilter": {
  name: "Assemble MountedTank",
  isAbstract: true,
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "AssembleMountedNanofilterIronFrame": {
  name: "AssembleMountedNanofilterIronFrame",
  implements: ["AssembleMountedNanofilter"],
  requires: [ "AssembleNanofilter" ],
  excludes: [ "AssembleMountedNanofilterRack1", "AssembleMountedNanofilterRack2" ],
  inputs: [ {productId: "Nanofilter"} , {productId: "IronFrame"}],
  outputs: [ {OP16: {productId: "CompletedTank"}}],
}

Process "AssembleMountedNanofilterRack1": {
  name: "AssembleMountedNanofilterRack1",
  implements: ["AssembleMountedNanofilter"],
  requires: [ "AssembleNanofilter" ],
  excludes: [ "AssembleMountedNanofilterIronFrame", "AssembleMountedNanofilterRack2" ],
  inputs: [ {productId: "Nanofilter"}, {productId: "Rack1"}],
  outputs: [ {OP17: {productId: "CompletedTank"}}],
}

Process "AssembleMountedNanofilterRack2": {
  name: "AssembleMountedNanofilterRack2",
  implements: ["AssembleMountedNanofilter"],
  requires: [ "AssembleNanofilter" ],
  excludes: [ "AssembleMountedNanofilterIronFrame", "AssembleMountedNanofilterRack1" ],
  inputs: [ {productId: "Nanofilter"}, {productId: "Rack2"}],
  outputs: [ {OP18: {productId: "CompletedTank"}}],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "AssembleMountedFilterTank": {
  name: "Assemble FilterTank",
  isAbstract: true,
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "AssembleMountedCAFilterTankSModuleIronFrame": {
  name: "AssembleMountedCAFilterTankSModuleIronFrame",
  implements: ["AssembleMountedFilterTank"],
  requires: [ "FillFilterTankSModuleCA" ],
  excludes: [ "AssembleMountedCAFilterTankSModuleIronFrame", "AssembleMountedCAFilterTankSModuleRack1", "AssembleMountedCBFilterTankSModuleRack1", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedCAFilterTankXLModuleRack2" ],
  inputs: [ {productId: "CAFilterTankSModule"} , {productId: "IronFrame"}],
  outputs: [ {OP19: {productId: "CompletedTank"}}],
}

Process "AssembleMountedCBFilterTankSModuleIronFrame": {
  name: "AssembleMountedCBFilterTankSModuleIronFrame",
  implements: ["AssembleMountedFilterTank"],
  requires: [ "FillFilterTankSModuleCB" ],
  excludes: [ "AssembleMountedCBFilterTankSModuleIronFrame", "AssembleMountedCAFilterTankSModuleRack1", "AssembleMountedCBFilterTankSModuleRack1", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedCAFilterTankXLModuleRack2" ],
  inputs: [ {productId: "CBFilterTankSModule"} , {productId: "IronFrame"}],
  outputs: [ {OP20: {productId: "CompletedTank"}}],
}

Process "AssembleMountedCAFilterTankSModuleRack1": {
  name: "AssembleMountedCAFilterTankSModuleRack1",
  implements: ["AssembleMountedFilterTank"],
  requires: [ "FillFilterTankSModuleCA" ],
  excludes: [ "AssembleMountedCBFilterTankSModuleIronFrame", "AssembleMountedCAFilterTankSModuleRack1", "AssembleMountedCAFilterTankSModuleIronFrame", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedCAFilterTankXLModuleRack2" ],
  inputs: [ {productId: "CAFilterTankSModule"} , {productId: "Rack1"}],
  outputs: [ {OP21: {productId: "CompletedTank"}}],
}

Process "AssembleMountedCBFilterTankSModuleRack1": {
  name: "AssembleMountedCBFilterTankSModuleRack1",
  implements: ["AssembleMountedFilterTank"],
  requires: [ "FillFilterTankSModuleCB" ],
  excludes: [ "AssembleMountedCBFilterTankSModuleIronFrame", "AssembleMountedCBFilterTankSModuleRack1", "AssembleMountedCAFilterTankSModuleIronFrame", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedCAFilterTankXLModuleRack2" ],
  inputs: [ {productId: "CBFilterTankSModule"} , {productId: "Rack1"}],
  outputs: [ {OP22: {productId: "CompletedTank"}}],
}

Process "AssembleMountedCAFilterTankXLModuleRack2": {
  name: "AssembleMountedCAFilterTankXLModuleRack2",
  implements: ["AssembleMountedFilterTank"],
  requires: [ "FillFilterTankXLModuleCA" ],
  excludes: [ "AssembleMountedCBFilterTankSModuleIronFrame", "AssembleMountedCAFilterTankSModuleRack1", "AssembleMountedCAFilterTankSModuleIronFrame", "AssembleMountedCBFilterTankSModuleRack1", "AssembleMountedCAFilterTankXLModuleRack2" ],
  inputs: [ {productId: "CAFilterTankXLModule"} , {productId: "Rack2"}],
  outputs: [ {OP23: {productId: "CompletedTank"}}],
}

Process "AssembleMountedCBFilterTankXLModuleRack2": {
  name: "AssembleMountedCBFilterTankXLModuleRack2",
  implements: ["AssembleMountedFilterTank"],
  requires: [ "FillFilterTankXLModuleCB" ],
  excludes: [ "AssembleMountedCBFilterTankSModuleIronFrame", "AssembleMountedCAFilterTankSModuleRack1", "AssembleMountedCAFilterTankSModuleIronFrame", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedCBFilterTankSModuleRack1" ],
  inputs: [ {productId: "CBFilterTankXLModule"} , {productId: "Rack2"}],
  outputs: [ {OP24: {productId: "CompletedTank"}}],
}

Process "MountTanksValve": {
  name: "MountTanksValve",
  isAbstract: true,
  outputs: [ {OP25: { productId: "CompletedTank" }} ],
  resources: [ { resourceId: "HandheldNutrunner"} ],
}

Process "MountTanksValve_1": {
  name: "Assemble MountWithTanksA",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankSIronFrame", "AssembleMountedCBFilterTankSModuleIronFrame" ],
  excludes: [ "MountTanksValve_2", "MountTanksValve_3", "MountTanksValve_4", "MountTanksValve_5", "MountTanksValve_6", "MountTanksValve_7", "MountTanksValve_8" ],
  inputs: [ {productId: "IronFrame"}, {productId: "FreshwaterTankSModule"}, {productId: "CBFilterTankSModule"}, {productId: "Valve1"} ],
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "MountTanksValve_2": {
  name: "Assemble MountWithTanksB",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankSIronFrame", "AssembleMountedCAFilterTankSModuleIronFrame" ],
  excludes: [ "MountTanksValve_1", "MountTanksValve_3", "MountTanksValve_4", "MountTanksValve_5", "MountTanksValve_6", "MountTanksValve_7", "MountTanksValve_8" ],
  inputs: [ {productId: "IronFrame"}, {productId: "FreshwaterTankSModule"}, {productId: "CAFilterTankSModule"}, {productId: "Valve1"} ],
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "MountTanksValve_3": {
  name: "Assemble MountWithTansC",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankSRack1", "AssembleMountedCAFilterTankSModuleRack1", "AssembleMountedNanofilterRack1" ],
  excludes: [ "MountTanksValve_2", "MountTanksValve_1", "MountTanksValve_4", "MountTanksValve_5", "MountTanksValve_6", "MountTanksValve_7", "MountTanksValve_8" ],
  inputs: [ {productId: "Rack1"}, {productId: "FreshwaterTankSModule"}, {productId: "CBFilterTankSModule"}, {productId: "Valve1"}, {productId: "Nanofilter"} ],
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "MountTanksValve_4": {
  name: "Assemble MountWithTansD",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankSRack1", "AssembleMountedCBFilterTankSModuleRack1", "AssembleMountedNanofilterRack1" ],
  excludes: [ "MountTanksValve_2", "MountTanksValve_3", "MountTanksValve_1", "MountTanksValve_5", "MountTanksValve_6", "MountTanksValve_7", "MountTanksValve_8" ],
  inputs: [ {productId: "Rack1"}, {productId: "FreshwaterTankSModule"}, {productId: "CAFilterTankSModule"}, {productId: "Valve1"}, {productId: "Nanofilter"} ],
  resources: [ { resourceId: "HandheldNutrunner"} ]
}

Process "MountTanksValve_5": {
  name: "Assemble MountWithTansE",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankXLRack2", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedWastewaterTankXLRack2"],
  excludes: [ "MountTanksValve_2", "MountTanksValve_3", "MountTanksValve_4", "MountTanksValve_1", "MountTanksValve_6", "MountTanksValve_7", "MountTanksValve_8" ],
  inputs: [ {productId: "Rack2"}, {productId: "FreshwatertankXLModule"}, {productId: "CBFilterTankXLModule"}, {productId: "Valve1"}, {productId: "WastewaterTankXLModule"}, {productId: "Valve2"} ],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "MountTanksValve_6": {
  name: "Assemble MountWithTansF",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankXLRack2", "AssembleMountedCAFilterTankXLModuleRack2", "AssembleMountedWastewaterTankXLRack2", "AssembleMountedNanofilterRack2"],
  excludes: [ "MountTanksValve_2", "MountTanksValve_3", "MountTanksValve_4", "MountTanksValve_5", "MountTanksValve_1", "MountTanksValve_7", "MountTanksValve_8" ],
  inputs: [ {productId: "Rack2"}, {productId: "FreshwatertankXLModule"}, {productId: "CAFilterTankXLModule"}, {productId: "Valve1"}, {productId: "WastewaterTankXLModule"}, {productId: "Valve2"} ],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "MountTanksValve_7": {
  name: "Assemble MountWithTansH",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankXLRack2", "AssembleMountedCBFilterTankXLModuleRack2", "AssembleMountedWastewaterTankXLRack2", "AssembleMountedNanofilterRack2"],
  excludes: [ "MountTanksValve_2", "MountTanksValve_3", "MountTanksValve_4", "MountTanksValve_1", "MountTanksValve_6", "MountTanksValve_5", "MountTanksValve_8" ],
  inputs: [ {productId: "Rack2"}, {productId: "FreshwatertankXLModule"}, {productId: "CBFilterTankXLModule"}, {productId: "Valve1"}, {productId: "WastewaterTankXLModule"}, {productId: "Valve2"}, {productId: "Nanofilter"} ],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "MountTanksValve_8": {
  name: "Assemble MountWithTansH",
  implements: ["MountTanksValve"],
  requires: [ "AssembleMountedFreshwaterTankXLRack2", "AssembleMountedCAFilterTankXLModuleRack2", "AssembleMountedWastewaterTankXLRack2"],
  excludes: [ "MountTanksValve_2", "MountTanksValve_3", "MountTanksValve_4", "MountTanksValve_5", "MountTanksValve_1", "MountTanksValve_7", "MountTanksValve_6" ],
  inputs: [ {productId: "Rack2"}, {productId: "FreshwatertankXLModule"}, {productId: "CAFilterTankXLModule"}, {productId: "Valve1"}, {productId: "WastewaterTankXLModule"}, {productId: "Valve2"}, {productId: "Nanofilter"} ],
  resources: [ { resourceId: "HandheldNutrunner_DFL651FZ"} ]
}

Process "AssembleCompleteTank": {
  name: "AssembleCompleteTank",
  isAbstract: true,
  requires: [ "MountTanksValve" ],
  inputs: [ { productId: "Tube1" }, { productId: "Tube2" } ],
  outputs: [ {OP26: { productId: "CompletedTank" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_1": {
  name: "AssembleCompleteTank_1",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_1"],
  inputs: [ {productId: "CompletedTank"} ],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_3", "AssembleCompleteTank_4", "AssembleCompleteTank_5", "AssembleCompleteTank_6", "AssembleCompleteTank_7", "AssembleCompleteTank_8" ],
  outputs: [ {OP27: { productId: "CompletedTank_1" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_2": {
  name: "AssembleCompleteTank_2",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_2"],
  excludes: [ "AssembleCompleteTank_1", "AssembleCompleteTank_3", "AssembleCompleteTank_4", "AssembleCompleteTank_5", "AssembleCompleteTank_6", "AssembleCompleteTank_7", "AssembleCompleteTank_8" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP28: { productId: "CompletedTank_2" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_3": {
  name: "AssembleCompleteTank_3",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_3"],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_1", "AssembleCompleteTank_4", "AssembleCompleteTank_5", "AssembleCompleteTank_6", "AssembleCompleteTank_7", "AssembleCompleteTank_8" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP29: { productId: "CompletedTank_3" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_4": {
  name: "AssembleCompleteTank_4",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_4"],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_3", "AssembleCompleteTank_1", "AssembleCompleteTank_5", "AssembleCompleteTank_6", "AssembleCompleteTank_7", "AssembleCompleteTank_8" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP30: { productId: "CompletedTank_4" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_5": {
  name: "AssembleCompleteTank_5",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_5"],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_3", "AssembleCompleteTank_4", "AssembleCompleteTank_1", "AssembleCompleteTank_6", "AssembleCompleteTank_7", "AssembleCompleteTank_8" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP31: { productId: "CompletedTank_5" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_6": {
  name: "AssembleCompleteTank_6",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_6"],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_3", "AssembleCompleteTank_4", "AssembleCompleteTank_5", "AssembleCompleteTank_1", "AssembleCompleteTank_7", "AssembleCompleteTank_8" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP32: { productId: "CompletedTank_6" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_7": {
  name: "AssembleCompleteTank_7",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_5"],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_3", "AssembleCompleteTank_4", "AssembleCompleteTank_5", "AssembleCompleteTank_6", "AssembleCompleteTank_1", "AssembleCompleteTank_8" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP33: { productId: "CompletedTank_7" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}

Process "AssembleCompleteTank_8": {
  name: "AssembleCompleteTank_8",
  implements: ["AssembleCompleteTank"],
  requires: [ "MountTanksValve_6"],
  excludes: [ "AssembleCompleteTank_2", "AssembleCompleteTank_3", "AssembleCompleteTank_4", "AssembleCompleteTank_5", "AssembleCompleteTank_6", "AssembleCompleteTank_7", "AssembleCompleteTank_1" ],
  inputs: [ {productId: "CompletedTank"}],
  outputs: [ {OP34: { productId: "CompletedTank_8" }} ],
  resources: [ { resourceId: "PIT_45"} ]
}
