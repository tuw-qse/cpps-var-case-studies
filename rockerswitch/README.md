Case Study Rocker Switch {#sec:switch}
------------------------

*Overview*. The *rocker switch* product line is produced on a high-speed industrial production system by the same industry partner. The data reported (artifacts and examples) has been abstracted to honor intellectual property rights.

*Rocker switches* are everyday appliances to control electrical devices,
such as lights or sun-blinds. Basically, a *rocker switch* consists of several contacts and rockers that close and
open electric circuits. With this simple schema it is possible to
realize basic but also complicated switching applications. The rocker
switch production system is a timed conveyor belt system.

*Data Collection*. Similar to the case study shift fork, we conducted
several offline and online workshops for the case study rocker switch
with our industry partner. In these workshops we discussed the rocker
switch product line and production system with the two main contact
engineers and one senior functional planner. Furthermore, we received
detailed planning artifacts, like a spreadsheet ($\sim$300 rows $\times$
45 columns) that engineers use as variant matrices, which we
incorporated into the case study. The engineers reviewed and
acknowledged the elicited results and drawn conclusions.

*Variability*. The *rocker switch* product line consists of the
essential core of twelve different rocker switches variants with up to
24 product parts and ten process steps (some variants in the original
product line consisted of up to 35 parts and 60 process steps). Each
rocker switch variant has an initially empty *socket* where parts are
mounted. The rocker switch variant described has a socket with four spaces for contacts and contacts of type *pole*,
*neutral*, and *off*. In the middle of the contacts, the figure shows a
*rocker* that allows opening and closing the circuits. Depending on the
switching application, the rocker switch consists of a variety of
contact and rocker types mounted at different locations in the socket.
To mount the socket into a frame, each rocker switch has two *claws*
with isolating *rings* each held by a *screw*.

*Configuration/Assembly*. In the described variant, for instance, the pole needs to
be inserted into the socket before the rocker. Accordingly, the rocker
must be inserted before the neutral and off contacts. However, in this
case, it is not important whether the neutral or the off contact get
mounted first or whether the claw is attached. Furthermore, some
resources, like a robot arm, of the production system might be able to
handle different contact types that can be used in different process
steps when the steps are distinct between rocker switch variants. These
variation points represent a large solution space for the design of the
production system.

The complexity of the rocker switch product line with consists with twelve product variants that have 165 dependencies, e.g., to define which contact groups are valid for specific product types, and 15 assembly groups is considered medium.
