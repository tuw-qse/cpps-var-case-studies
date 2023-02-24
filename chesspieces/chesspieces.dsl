Attribute "partialProduct": {
    description: "Specifies if the given product is a partial one",
    defaultValue: "false",
    type: "String"
}

Attribute "rod_length": {
    description: "Specifies the rod_length",
    defaultValue: 0.0,
    type: "Double"
}

Attribute "rod_diameter": {
    description: "Specifies the rod_diameter",
    defaultValue: "M6",
    type: "String"
}

Attribute "hole_diameter": {
    description: "Specifies the hole_diameter",
    defaultValue: "M6",
    type: "String"
}

Attribute "base_outer_diameter": {
    description: "Specifies the outer diameter of the socket",
    defaultValue: 22.0,
    type: "Double"
}

Attribute "material": {
    description: "Specifies the material",
    defaultValue: "",
    type: "String"
}

Product "AluminumBar": {
    name: "AluminumBar",
    partialProduct: true,
    base_outer_diameter: 22.0,
    material: "Aluminum"
}

Product "Base": {
    name: "Base",
    isAbstract: true,
    partialProduct: "true",
    hole_diameter: "M6",
    base_outer_diameter: 22.0,
    material: "Aluminum"
}

Product "Base_onestrip": {
    name: "Base_onestrip",
    implements: [ "Base" ],
    excludes: [ "Base_twostrip" ],
    partialProduct: "true",
    hole_diameter: "M6",
    base_outer_diameter: 22.0,
    material: "Aluminum"
}

Product "Base_twostrip": {
    name: "Base_twostrip",
    implements: [ "Base" ],
    excludes: [ "Base_onestrip" ],
    partialProduct: "true",
    hole_diameter: "M6",
    base_outer_diameter: 22.0,
    material: "Aluminum"
}

Product "Rod": {
    name: "Rod",
    isAbstract: true,
    partialProduct: "true",
    rod_diameter: "M6"
}

Product "Rod_short": {
    name: "Rod short",
    implements: [ "Rod" ],
    excludes: [ "Rod_long" ],
    partialProduct: "true",
    rod_length: 20.0
}

Product "Rod_long": {
    name: "Rod long",
    implements: [ "Rod" ],
    excludes: [ "Rod_short" ],
    partialProduct: "true",
    rod_length: 30.0
}

Product "PLA": {
    name: "PLA",
    partialProduct: true,
    material: "PLA"
}

Product "Body": {
    name: "Body",
    isAbstract: true,
    partialProduct: "true"
}

Product "Body_minor": {
    name: "Body_minor",
    isAbstract: true,
    implements: [ "Body" ],
    excludes: [ "Body_major" ],
    partialProduct: "true"
}

Product "Pawn_body": {
    name: "Pawn_body",
    implements: [ "Body_minor" ],
    excludes: [ "Knight_body", "Rook_body", "Bishop_body", "Queen_body", "King_body" ],
    partialProduct: "true"
}

Product "Bishop_body": {
    name: "Bishop_body",
    implements: [ "Body_minor" ],
    excludes: [ "Knight_body", "Rook_body", "Pawn_body", "Queen_body", "King_body" ],
    partialProduct: "true"
}

Product "Knight_body": {
    name: "Knight_body",
    implements: [ "Body_minor" ],
    excludes: [ "Bishop_body", "Rook_body", "Pawn_body", "Queen_body", "King_body" ],
    partialProduct: "true"
}

Product "Rook_body": {
    name: "Rook_body",
    implements: [ "Body_minor" ],
    excludes: [ "Knight_body", "Bishop_body", "Pawn_body", "Queen_body", "King_body" ],
    partialProduct: "true"
}

Product "Body_major": {
    name: "Body_major",
    isAbstract: true,
    implements: [ "Body" ],
    excludes: [ "Body_minor" ],
    partialProduct: "true"
}

Product "Queen_body": {
    name: "Queen_body",
    implements: [ "Body_major" ],
    excludes: [ "Knight_body", "Bishop_body", "Pawn_body", "Rook_body", "King_body" ],
    partialProduct: "true"
}

Product "King_body": {
    name: "King_body",
    implements: [ "Body_major" ],
    excludes: [ "Knight_body", "Bishop_body", "Pawn_body", "Rook_body", "Queen_body" ],
    partialProduct: "true"
}

Product "Chesspiece": {
    name: "Chesspiece",
    isAbstract: true,
    requires: [ "Base", "Rod", "Body", "PLA", "AluminumBar" ]
}

Product "Chesspiece_minor": {
    name: "Chesspiece_minor",
    isAbstract: true,
    implements: [ "Chesspiece" ],
    requires: [ "Base_onestrip"]
}

Product "Chesspiece_major": {
    name: "Chesspiece_major",
    isAbstract: true,
    implements: [ "Chesspiece" ],
    requires: [ "Base_twostrip" ]
}

Product "Pawn": {
    name: "Pawn",
    implements: [ "Chesspiece_minor" ],
    requires: [ "Pawn_body" ],
    excludes: [ "Rook", "Bishop", "Knight", "Queen", "King" ]
}

Product "Rook": {
    name: "Rook",
    implements: [ "Chesspiece_minor" ],
    requires: [ "Rook_body" ],
    excludes: [ "Pawn", "Bishop", "Knight", "Queen", "King" ]
}

Product "Bishop": {
    name: "Bishop",
    implements: [ "Chesspiece_minor" ],
    requires: [ "Bishop_body" ],
    excludes: [ "Pawn", "Rook", "Knight", "Queen", "King" ]
}

Product "Knight": {
    name: "Knight",
    implements: [ "Chesspiece_minor" ],
    requires: [ "Knight_body" ],
    excludes: [ "Pawn", "Rook", "Bishop", "Queen", "King" ]
}

Product "Queen": {
    name: "Queen",
    implements: [ "Chesspiece_major" ],
    requires: [ "Queen_body" ],
    excludes: [ "Pawn", "Rook", "Bishop", "Knight", "King" ]
}

Product "King": {
    name: "King",
    implements: [ "Chesspiece_major" ],
    requires: [ "King_body" ],
    excludes: [ "Pawn", "Rook", "Bishop", "Knight", "Queen" ]
}

Resource "Barloader": {
    name: "Barloader",
}

Resource "TurningMachine_45": {
    name: "TurningMachine_45",
}

Resource "3DPrinter": {
    name: "3DPrinter"
}

Resource "Gripper": {
    name: "Gripper"
}

Resource "AssemblyStation": {
    name: "AssemblyStation"
}

Process "LoadAluminumBar": {
    name: "LoadAluminumBar",
    inputs: [ {productId: "AluminumBar"} ],
    outputs: [ {OP1: {productId: "AluminumBar" }} ],
    resources: [ { resourceId: "Barloader" } ]
}

Process "CutAluminumBar": {
    name: "CutAluminumBar",
    inputs: [ {productId: "AluminumBar"} ],
    requires: [ "LoadAluminumBar" ],
    outputs: [ {OP2: {productId: "Base" }} ],
    resources: [ { resourceId: "TurningMachine_45" } ]
}

Process "TurnBase": {
    name: "TurnBase",
    requires: [ "CutAluminumBar" ],
    inputs: [ {productId: "Base"} ],
    outputs: [ {OP3: {productId: "Base" }} ],
    resources: [ { resourceId: "TurningMachine_45" } ]
}

Process "CarveReamings": {
    name: "CarveReamings",
    isAbstract: true,
    requires: [ "CutAluminumBar" ],
    inputs: [ {productId: "Base"} ],
    outputs: [ {OP4: {productId: "Base" }} ],
    resources: [ { resourceId: "TurningMachine_45" } ]
}

Process "CarveReamings_one": {
    name: "CarveReamings_one",
    implements: [ "CarveReamings" ],
    requires: [ "CutAluminumBar" ],
    inputs: [ {productId: "Base"}],
    excludes: [ "CarveReamings_two" ],
    outputs: [ {OP5: {productId: "Base_onestrip" }} ],
    resources: [ { resourceId: "TurningMachine_45" } ]
}

Process "CarveReamings_two": {
    name: "CarveReamings_two",
    implements: [ "CarveReamings" ],
    requires: [ "CutAluminumBar" ],
    inputs: [ {productId: "Base"} ],
    excludes: [ "CarveReamings_one" ],
    outputs: [ {OP6: {productId: "Base_twostrip" }} ],
    resources: [ { resourceId: "TurningMachine_45" } ]
}

Process "InsertPLA": {
    name: "InsertPLA",
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP7: {productId: "PLA" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintBody": {
    name: "PrintBody",
    isAbstract: true,
    requires: [ "InsertPLA" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP8: {productId: "Body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintPawnBody": {
    name: "PrintPawnBody",
    implements: [ "PrintBody" ],
    requires: [ "InsertPLA" ],
	excludes: [ "PrintRookBody", "PrintBishopBody", "PrintKnightBody", "PrintQueenBody", "PrintKingBody" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP9: {productId: "Pawn_body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintRookBody": {
    name: "PrintRookBody",
    implements: [ "PrintBody" ],
    requires: [ "InsertPLA" ],
	excludes: [ "PrintPawnBody", "PrintBishopBody", "PrintKnightBody", "PrintQueenBody", "PrintKingBody" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP10: {productId: "Rook_body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintBishopBody": {
    name: "PrintBishopBody",
    implements: [ "PrintBody" ],
    requires: [ "InsertPLA" ],
	excludes: [ "PrintPawnBody", "PrintRookBody", "PrintKnightBody", "PrintQueenBody", "PrintKingBody" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP11: {productId: "Bishop_body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintKnightBody": {
    name: "PrintKnightBody",
    implements: [ "PrintBody" ],
    requires: [ "InsertPLA" ],
	excludes: [ "PrintPawnBody", "PrintRookBody", "PrintBishopBody", "PrintQueenBody", "PrintKingBody" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP12: {productId: "Knight_body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintQueenBody": {
    name: "PrintQueenBody",
    implements: [ "PrintBody" ],
    requires: [ "InsertPLA" ],
	excludes: [ "PrintPawnBody", "PrintRookBody", "PrintBishopBody", "PrintKnightBody", "PrintKingBody" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP13: {productId: "Queen_body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "PrintKingBody": {
    name: "PrintKingBody",
    implements: [ "PrintBody" ],
    requires: [ "InsertPLA" ],
	excludes: [ "PrintPawnBody", "PrintRookBody", "PrintBishopBody", "PrintKnightBody", "PrintQueenBody" ],
    inputs: [ {productId: "PLA"} ],
    outputs: [ {OP14: {productId: "King_body" }} ],
    resources: [ { resourceId: "3DPrinter" } ]
}

Process "InsertRod": {
    name: "InsertRod",
    inputs: [ {productId: "Rod"} ],
    outputs: [ {OP15: {productId: "Rod" }} ],
    resources: [ { resourceId: "Gripper" } ]
}

Process "InsertBase": {
    name: "InsertBase",
    inputs: [ {productId: "Base"} ],
    requires: [ "TurnBase", "CarveReamings" ],
    outputs: [ {OP16: {productId: "Base" }} ],
    resources: [ { resourceId: "Gripper" } ]
}

Process "InsertBody": {
    name: "InsertBody",
    inputs: [ {productId: "Body"} ],
    requires: [ "PrintBody" ],
    outputs: [ {OP17: {productId: "Body" }} ],
    resources: [ { resourceId: "Gripper" } ]
}

Process "ScrewBody": {
    name: "ScrewBody",
    inputs: [ {productId: "Body"}, {productId: "Rod"}],
    requires: [ "InsertBody", "InsertRod"],
    outputs: [ {OP18: {productId: "Chesspiece" }} ],
    resources: [ { resourceId: "AssemblyStation" } ]
}

Process "ScrewBase": {
    name: "ScrewBase",
    inputs: [ {productId: "Base"}, {productId: "Rod"}],
    requires: [ "InsertBase", "InsertRod"],
    outputs: [ {OP19: {productId: "Chesspiece" }} ],
    resources: [ { resourceId: "AssemblyStation" } ]
}

Constraint "C1": {
    definition: "Body_minor, Base_onestrip -> Body_minor implies Base_onestrip"
}

Constraint "C2": {
    definition: "Body_major, Base_twostrip -> Body_major implies Base_twostrip"
}

Constraint "C3": {
    definition: "Body_minor, Rod_short -> Body_minor implies Rod_short"
}

Constraint "C4": {
    definition: "Body_major, Rod_long -> Body_major implies Rod_long"
}
