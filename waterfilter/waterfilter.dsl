Product "Charcoal": {
	name: "Charcoal",
	isAbstract: true,
}

Product "CharcoalActive": {
	name: "CharcoalActive",
	isAbstract: false,
	implements: [ "Charcoal" ],
	excludes: [ "CharcoalBone" ]
}

Product "CharcoalBone": {
	name: "CharcoalBone",
	isAbstract: false,
	implements: [ "Charcoal" ],
	excludes: [ "CharcoalActive" ]
}

Product "Sand": {
	name: "Sand",
	isAbstract: false
}

Product "Valve": {
	name: "Valve",
	isAbstract: true
}

Product "Valve1": {
	name: "Valve1",
	isAbstract: false,
	implements: [ "Valve" ]
}

Product "Valve2": {
	name: "Valve2",
	isAbstract: false,
	implements: [ "Valve" ]
}

Product "Tube": {
	name: "Tube",
	isAbstract: true
}

Product "Tube1": {
	name: "Tube1",
	isAbstract: false,
	implements: [ "Tube" ]
}

Product "Tube2": {
	name: "Tube2",
	isAbstract: false,
	implements: [ "Tube" ]
}

Product "Tube3": {
	name: "Tube3",
	isAbstract: false,
	implements: [ "Tube" ]
}

Product "Mount": {
	name: "Mount",
	isAbstract: true
}

Product "Rack1": {
	name: "Rack1",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack2", "IronFrame" ]
}

Product "Rack2": {
	name: "Rack2",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack1", "IronFrame" ]
}

Product "IronFrame": {
	name: "IronFrame",
	isAbstract: false,
	implements: [ "Mount" ],
	excludes: [ "Rack2", "Rack1" ]
}

Product "FreshwaterTank": {
	name: "FreshwaterTank",
	isAbstract: true
}

Product "FreshwaterTankS": {
	name: "FreshwaterTankS",
	isAbstract: false,
	implements: [ "FreshwaterTank" ],
	excludes: [ "FreshwaterTankXL" ]
}

Product "FreshwaterTankXL": {
	name: "FreshwaterTankXL",
	isAbstract: false,
	implements: [ "FreshwaterTank" ],
	excludes: [ "FreshwaterTankS" ]
}

Product "WastewaterTankXL": {
	name: "WastewaterTankXL",
	isAbstract: false
}

Product "Filtertank": {
	name: "Filtertank",
	isAbstract: true,
	children: [ "Sand" ],
	requires: [ "Sand" ]
}

Product "FiltertankS": {
	name: "FiltertankS",
	isAbstract: false,
	implements: [ "Filtertank" ],
	excludes: [ "FiltertankXL" ]
}

Product "FiltertankXL": {
	name: "FiltertankXL",
	isAbstract: false,
	implements: [ "Filtertank" ],
	excludes: [ "FiltertankS" ]
}

Product "CompletedFiltertankSWithActive": {
	name: "CompletedFiltertankSWithActive",
	isAbstract: false,
	children: [ "FiltertankS", "CharcoalActive" ],
	requires: [ "FiltertankS", "CharcoalActive" ],
}

Product "CompletedFiltertankXLWithActive": {
	name: "CompletedFiltertankXLWithActive",
	isAbstract: false,
	children: [ "FiltertankXL", "CharcoalActive" ],
	requires: [ "FiltertankXL", "CharcoalActive" ],
}

Product "CompletedFiltertankSWithBone": {
	name: "CompletedFiltertankSWithBone",
	isAbstract: false,
	children: [ "FiltertankS", "CharcoalBone" ],
	requires: [ "FiltertankS", "CharcoalBone" ],
}

Product "CompletedFiltertankXLWithBone": {
	name: "CompletedFiltertankXLWithBone",
	isAbstract: false,
	children: [ "FiltertankXL", "CharcoalBone" ],
	requires: [ "FiltertankXL", "CharcoalBone" ],
}

Product "NanofilterHull": {
	name: "NanofilterHull",
	isAbstract: false
}

Product "NanofilterMaterial": {
	name: "NanofilterMaterial",
	isAbstract: false
}

Product "Membrane": {
	name: "Membrane",
	isAbstract: false
}

Product "Nanofilter": {
	name: "Nanofilter",
	isAbstract: false,
	children: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
	requires: [ "NanofilterHull", "NanofilterMaterial", "Membrane"],
}

Product "CompletedFreshwaterTank": {
	name: "CompletedFreshwaterTank",
	isAbstract: true,
	children: [ "FreshwaterTank", "Valve1" ],
	requires: [ "FreshwaterTank", "Valve1" ],
}

Product "CompletedFreshwaterTankS": {
	name: "CompletedFreshwaterTankS",
	isAbstract: false,
	implements: [ "CompletedFreshwaterTank" ],
	requires: [ "FreshwaterTankS" ],
	excludes: [ "CompletedFreshwaterTankXL" ]
}

Product "CompletedFreshwaterTankXL": {
	name: "CompletedFreshwaterTankXL",
	isAbstract: false,
	implements: [ "CompletedFreshwaterTank" ],
	requires: [ "FreshwaterTankXL" ],
	excludes: [ "CompletedFreshwaterTankS" ]
}

Product "CompletedWastewaterTank": {
	name: "CompletedWastewaterTank",
	isAbstract: false,
	children: [ "WastewaterTankXL", "Valve2" ],
	requires: [ "WastewaterTankXL", "Valve2" ],
}

Product "MountedTanks": {
	name: "MountedTanks",
	isAbstract: true,
	children: [ "Mount", "CompletedFreshwaterTank" ],
	requires: [ "Mount", "CompletedFreshwaterTank" ],
}

Product "MountedTanks1": {
	name: "MountedTanks1",
	isAbstract: false,
	implements: [ "MountedTanks" ],
	requires: [ "IronFrame", "CompletedFreshwaterTankS" ],
	excludes: [ "MountedTanks2", "MountedTanks3" ]
}

Product "MountedTanks2": {
	name: "MountedTanks2",
	isAbstract: false,
	implements: [ "MountedTanks" ],
	requires: [ "Rack1", "CompletedFreshwaterTankS" ],
	excludes: [ "MountedTanks1", "MountedTanks3" ]
}

Product "MountedTanks3": {
	name: "MountedTanks3",
	isAbstract: false,
	implements: [ "MountedTanks" ],
	requires: [ "Rack2", "CompletedFreshwaterTankXL", "CompletedWastewaterTank" ],
	excludes: [ "MountedTanks2", "MountedTanks1" ]
}

Product "MountWithTanks": {
	name: "MountWithTanks",
	isAbstract: true,
	children: [ "MountedTanks" ],
	requires: [ "MountedTanks" ],
}

Product "MountWithTanks-TypeA": {
	name: "MountWithTanks-TypeA",
	isAbstract: false,
	implements: [ "MountWithTanks" ],
	requires: [ "MountedTanks1", "CompletedFiltertankSWithBone" ],
	excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ]
}

Product "MountWithTanks-TypeB": {
	name: "MountWithTanks-TypeB",
	isAbstract: false,
	implements: [ "MountWithTanks" ],
	requires: [ "MountedTanks1", "CompletedFiltertankSWithActive" ],
	excludes: [ "MountWithTanks-TypeA", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ]
}

Product "MountWithTanks-TypeC": {
	name: "MountWithTanks-TypeC",
	isAbstract: false,
	implements: [ "MountWithTanks" ],
	requires: [ "MountedTanks2", "CompletedFiltertankSWithBone" ],
	excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeA", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ]
}

Product "MountWithTanks-TypeD": {
	name: "MountWithTanks-TypeD",
	isAbstract: false,
	implements: [ "MountWithTanks" ],
	requires: [ "MountedTanks2", "CompletedFiltertankSWithActive" ],
	excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeA", "MountWithTanks-TypeE", "MountWithTanks-TypeF" ]
}

Product "MountWithTanks-TypeE": {
	name: "MountWithTanks-TypeE",
	isAbstract: false,
	implements: [ "MountWithTanks" ],
	requires: [ "MountedTanks3", "CompletedFiltertankXLWithBone" ],
	excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeA", "MountWithTanks-TypeF" ]
}

Product "MountWithTanks-TypeF": {
	name: "MountWithTanks-TypeF",
	isAbstract: false,
	implements: [ "MountWithTanks" ],
	requires: [ "MountedTanks3", "CompletedFiltertankXLWithActive" ],
	excludes: [ "MountWithTanks-TypeB", "MountWithTanks-TypeC", "MountWithTanks-TypeD", "MountWithTanks-TypeE", "MountWithTanks-TypeA" ]
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
