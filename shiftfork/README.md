Case Study Shift 
---------------------

*Overview*. The *shift fork* product line is produced on an industrial production
system planned by one of our industry partners, a CPPS integrator for
high-speed automation of assembling automotive parts. The data reported
(artifacts and examples) has been abstracted to honor intellectual
property rights. Currently, our industry partner restructures its
engineering process towards using the approach and an approach for
structured product line engineering through all engineering levels. To
this end, we are in close contact with two senior and one junior domain
experts of the company that act as an interface to research.

*Data collection*. For the case study, we conducted several offline and
online workshops. In these workshops, we discussed the case in detail
with the two mentioned senior members, two senior engineers (one from
the functional and one from the mechanical domain), and several junior
engineers from different domains. We received and discussed a large
number of different engineering artifacts, from requirement documents in
text and spreadsheet format to the manual of the finished production
system. We analyzed the data manually extracting the information of the
product line and its variants to derive the case study.

*Variability.* A shift fork is a part of a manual transmission in the
drive chain of a machine, e.g., a car. It shifts a cuff along rods into
particular positions to let the gears connect correctly. The *shift fork
product line* consists of four different shift fork variants that are
manufactured on a timed conveyor-belt production system. A single shift
fork consists of 14 parts, where the same 12 parts are used in all four
shift fork variants and two parts differ between the variants. For
instance, the shift fork variant *Fork-13* requires *Barrel 1*, a
commonality of all shift fork types, as well as *Pipe 8* and *Lock 3*,
which differ among the shift fork variants. As there are, e.g.,
different pipe types, but a shift fork requires exactly one pipe, the
pipe types build an exclusive group. The production system requires 15
process steps to assemble a single shift fork.

*Configuration/Assembly*. Similar to the truck, the sequence of process
steps, i.e., how the shift fork is assembled, is important in the
production system. For instance, the parts *Fork 3*, *Fork 4*, and *Fork
5* need to be mounted to the pipe before one of the locks can be welded
on. Such dependencies can at the moment not be expressed, for instance,
in a feature model, as it does not define the order of feature
selection.

Figure [Shift Fork](https://w.wiki/3DCf) depicts a rendered manual transmission with
three shift forks (blue, cyan, and green), the corresponding instance
for the shift fork product types, and the resulting feature model. The complexity of the shift fork case with
four products, four abstract assembly groups, and 36 dependencies (e.g.,
exclusions between the pipes and locks) between the product parts is
rather low. The instance and the resulting feature model can be found in
the repository.