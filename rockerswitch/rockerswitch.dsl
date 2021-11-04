Product "Socket": {
  name: "Socket",
  isAbstract: false,
}

Product "Pole": {
  name: "Pole",
  isAbstract: true
}

Product "Pole1-1": {
  name: "Pole 1-1",
  isAbstract: false,
  implements: [ "Pole" ]
}

Product "Pole1-2": {
  name: "Pole 1-2",
  isAbstract: false,
}

Product "Pole2-1": {
  name: "Pole 2-1",
  isAbstract: false,
  implements: [ "Pole" ]
}

Product "Pole2-2": {
  name: "Pole 2-2",
  isAbstract: false,
  implements: [ "Pole" ]
}

Product "Neutral": {
  name: "Neutral",
  isAbstract: true,
}

Product "Neutral1-1": {
  name: "Neutral 1-1",
  isAbstract: false,
  implements: [ "Neutral" ]
}

Product "Neutral1-2": {
  name: "Neutral 1-2",
  isAbstract: false,
  implements: [ "Neutral" ]
}


Product "Changeover": {
  name: "Changeover",
  isAbstract: true,
}

Product "Changeover1": {
  name: "Changeover 1",
  isAbstract: false,
  implements: [ "Changeover" ]
}

Product "Changeover2": {
  name: "Changeover 2",
  isAbstract: false,
  implements: [ "Changeover" ]
}

Product "Rocker": {
  name: "Rocker",
  isAbstract: true
}

Product "Rocker1-1": {
  name: "Rocker 1-1",
  isAbstract: false, 
  implements: [ "Rocker" ]
}

Product "Rocker1-2": {
  name: "Rocker 1-2",
  isAbstract: false, 
  implements: [ "Rocker" ]
}

Product "Rocker2-1": {
  name: "Rocker 2-1",
  isAbstract: false, 
  implements: [ "Rocker" ]
}

Product "Rocker2-2": {
  name: "Rocker 2-2",
  isAbstract: false, 
  implements: [ "Rocker" ]
}

Product "Off": {
  name: "Off",
  isAbstract: true
}

Product "Off1-1": {
  name: "Off 1-1",
  isAbstract: false, 
  implements: [ "Off" ]
}

Product "Off1-2": {
  name: "Off 1-2",
  isAbstract: false, 
  implements: [ "Off" ]
}

Product "Off1-3": {
  name: "Off 1-3",
  isAbstract: false, 
  implements: [ "Off" ]
}

Product "Off1-4": {
  name: "Off 1-4",
  isAbstract: false, 
  implements: [ "Off" ]
}

Product "Series": {
  name: "Series",
  isAbstract: false,
}

Product "Crossover": {
  name: "Crossover",
  isAbstract: false,
}

Product "Screw": {
  name: "Screw",
  isAbstract: true,
}

Product "Screw1-1": {
  name: "Screw 1-1",
  isAbstract: false,
  implements: [ "Screw" ]
}

Product "Screw1-2": {
  name: "Screw 1-2",
  isAbstract: false,
  implements: [ "Screw" ]
}

Product "O-Ring": {
  name: "O-Ring",
  isAbstract: true
}

Product "O-Ring1-1": {
  name: "O-Ring 1-1",
  isAbstract: false,
  implements: [ "O-Ring" ]
}

Product "O-Ring1-2": {
  name: "O-Ring 1-2",
  isAbstract: false,
  implements: [ "O-Ring" ]
}

Product "Claw": {
  name: "Claw",
  isAbstract: true
}

Product "Claw1-1": {
  name: "Claw 1-1",
  isAbstract: false,
  implements: [ "Claw" ]
}

Product "Claw1-2": {
  name: "Claw 1-2",
  isAbstract: false,
  implements: [ "Claw" ]
}

Product "Screwcompond": {
  name: "Screwcompond",
  isAbstract: true,
  children: [ "Screw", "O-Ring", "Claw" ],
  requires: [ "Screw", "O-Ring", "Claw" ],
}

Product "Screwcompond1-1": {
  name: "Screwcompond 1-1",
  isAbstract: false,
  implements: [ "Screwcompond" ],
  requires: [ "Screw1-1", "O-Ring1-1", "Claw1-1"],
}


Product "Screwcompond1-2": {
  name: "Screwcompond 1-2",
  isAbstract: false,
  implements: [ "Screwcompond" ],
  requires: [ "Screw1-2", "O-Ring1-2", "Claw1-2"],
}

Product "Contacts-A":{
  name: "Contacts-A",
  isAbstract: true,
  children: [ "Socket", "Pole1-1"],
  requires: [ "Socket", "Pole1-1"],
  excludes: [ "Contacts-B", "Contacts-C" ]
}

Product "Contacts-B":{
  name: "Contacts-B",
  isAbstract: true,
  children: [ "Socket", "Pole1-1", "Pole1-2"],
  requires: [ "Socket", "Pole1-1", "Pole1-2"],
  excludes: [ "Contacts-A", "Contacts-C" ]
}

Product "Contacts-C": {
  name: "Contacts-C",
  isAbstract: true,
  children: [ "Socket", "Pole2-1", "Pole2-2"],
  requires: [ "Socket", "Pole2-1", "Pole2-2"],
  excludes: [ "Contacts-A", "Contacts-B" ]
}

Product "Rockers-A": {
  name: "Rockers-A",
  isAbstract: true,
  children: [ "Rocker1-1", "Off1-1"],
  requires: [ "Rocker1-1", "Off1-1"],
  excludes: [ "Rockers-B"]
}

Product "Rockers-B": {
  name: "Rockers-B",
  isAbstract: true,
  children: [ "Rocker1-1", "Rocker1-2", "Off1-1"],
  requires: [ "Rocker1-1", "Rocker1-2", "Off1-1"],
  excludes: [ "Rockers-A"]
}

Product "Rockerswitch": {
  name: "Rockerswitch",
  isAbstract: true,
  children: [ "Screwcompond1-1", "Screwcompond1-2"],
  requires: [ "Screwcompond1-1", "Screwcompond1-2"],
}

Product "Rockerswitch-A": {
  name: "Rockerswitch-A",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-A", "Rockers-A" ],
  children: [ "Changeover1" ],
  requires: [ "Changeover1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-B": {
  name: "Rockerswitch-B",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-A", "Rockers-A" ],
  children: [ "Neutral1-1", "Changeover1" ],
  requires: [ "Neutral1-1", "Changeover1" ],
  excludes: [ "Rockerswitch-A", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-C": {
  name: "Rockerswitch-C",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-A", "Rockers-A" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-A", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-D": {
  name: "Rockerswitch-D",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-A", "Rockers-A" ],
  children: [ "Neutral1-1" ],
  requires: [ "Neutral1-1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-A", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-E": {
  name: "Rockerswitch-E",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-A", "Rockers-A" ],
  children: [ "Neutral1-1", "Neutral1-2" ],
  requires: [ "Neutral1-1", "Neutral1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-A", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-F": {
  name: "Rockerswitch-F",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-B", "Rockers-B" ],
  children: [ "Changeover1" ],
  requires: [ "Changeover1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-A", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-G": {
  name: "Rockerswitch-G",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-B", "Rockers-B" ],
  children: [ "Off1-2" ],
  requires: [ "Off1-2" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-A", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-H": {
  name: "Rockerswitch-H",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-B" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-A", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-I": {
  name: "Rockerswitch-I",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-B" ],
  children: [ "Rocker1-1", "Rocker1-2", "Series" ],
  requires: [ "Rocker1-1", "Rocker1-2", "Series" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-A", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-J": {
  name: "Rockerswitch-J",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-B" ],
  children: [ "Rocker1-1", "Rocker1-2", "Series", "Neutral1-1" ],
  requires: [ "Rocker1-1", "Rocker1-2", "Series", "Neutral1-1" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-A", "Rockerswitch-K", "Rockerswitch-L"]
}

Product "Rockerswitch-K": {
  name: "Rockerswitch-K",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-C" ],
  children: [ "Rocker2-1", "Rocker2-2", "Off1-1", "Off1-2", "Off1-3", "Off1-4" ],
  requires: [ "Rocker2-1", "Rocker2-2", "Off1-1", "Off1-2", "Off1-3", "Off1-4" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-A", "Rockerswitch-L"]
}

Product "Rockerswitch-L": {
  name: "Rockerswitch-L",
  isAbstract: false,
  implements: [ "Rockerswitch", "Contacts-B" ],
  children: [ "Rocker1-1", "Rocker1-2", "Changeover2", "Crossover" ],
  requires: [ "Rocker1-1", "Rocker1-2", "Changeover2", "Crossover" ],
  excludes: [ "Rockerswitch-B", "Rockerswitch-C", "Rockerswitch-D", "Rockerswitch-E", "Rockerswitch-F", "Rockerswitch-G", "Rockerswitch-H", "Rockerswitch-I", "Rockerswitch-J", "Rockerswitch-K", "Rockerswitch-A"]
}
