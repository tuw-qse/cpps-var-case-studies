# CPPS Variability Case Studies

This is the repository of the CPPS Variability Case Studies.

Each case study can be found in its own directory.
Within the directory you find a case study description, the PPR DSL file with the representation of the product variants, the transformed FeatureIDE feature models and a image of the resulting feature model.

- [Truck Case Study](/truck/)
- [Shift Fork Case Study](/shiftfork/)
- [Water Filter Case Study](/waterfilter/)
- [Rocker Switch Case Study](/rockerswitch/)
- [Chesspiece Case Study](/chesspieces/)

### Case Study reference

[![DOI](https://img.shields.io/badge/DOI-10.1145/3461002.3473946-888888.svg)](https://doi.org/10.1145/3461002.3473946)

```
@inproceedings{Meixner2021CppsCaseStudies,
author = {Meixner, Kristof and Feichtinger, Kevin and Rabiser, Rick and Biffl, Stefan},
title = {A Reusable Set of Real-World Product Line Case Studies for Comparing Variability Models in Research and Practice},
year = {2021},
isbn = {9781450384704},
publisher = {Association for Computing Machinery},
address = {New York, NY, USA},
url = {https://doi.org/10.1145/3461002.3473946},
doi = {10.1145/3461002.3473946},
abstract = {Real-world cases describing (product) variability in production systems are rare and
often not accessible. Thus, researchers often use toy examples or develop fictitious
case studies. These are designed to demonstrate their approach but rarely to compare
multiple approaches. In this paper, we aim at making variability modeling evaluations
comparable. We present and provide a reusable set of four real-world case studies
that are easy to access, with artifacts represented in a universal, variability-model-agnostic
way, the industrial Product-Process-Resource Domain-Specific Language (PPR DSL). We
report how researchers can use the case studies, automatically transforming the Domain-Specific
Language (DSL) artifacts to well-known variability models, e.g., product feature models,
using the Variability Evolution Roundtrip Transformation (VERT) process. We compare
the expressiveness and complexity of the transformed feature models. We argue that
the case studies with the DSL and the flexible transformation capabilities build a
valuable contribution to making future research results more comparable and facilitating
evaluations with real-world product lines.},
booktitle = {Proceedings of the 25th ACM International Systems and Software Product Line Conference - Volume B},
pages = {105–112},
numpages = {8},
keywords = {feature extraction, variability modeling, case studies, cyber-physical production system},
location = {Leicester, United Kindom},
series = {SPLC '21}
}
```

## Transformation Operations

*From PPR DSL to feature models.* 

Operation **productToFeature** creates a feature for each defined product. The id of the product defines the feature name and the abstract attribute of the product defines if the feature is an abstract feature (default if not present: false). We chose to use the product id as the feature name because the feature name in
FeatureIDE must be unique too. 

Operation **productAttributesToFeatureProperties** defines that all attributes of a product (including custom ones) are transformed into feature properties. This way we ensure that all the information is stored within the feature model and the PPR DSL can be restored completely. The PPR DSL defines the attribute implements, which we use to derive the feature tree. 

Therefore, operation **implementedProductToFeatureTree** sets a feature as a child of another feature, if the represented product only implements exactly one other product. The product (feature) which is implemented becomes the parent of the implementing product (feature). In the end, the operation also introduces a virtual root node as the root feature, if there are multiple features without a parent. The PPR DSL defines different ways to define a constraint. Either using the two product attributes requires and excludes or by defining constraints. We defined two operations: 

Operation **requiresAttributeToImpliesConstraints** transforms each required product in the attribute to a separate implies constraint, built as the product as the source and the required product as the target.

Operation **excludesAttributeToExcludeConstraints** transformed the products listed in the attribute excludes into excludes constraints (source-product implies not(target-product). 

For propositional logic constraints, operation **propositionalLogicConstraintToFeatureModelConstraint** transforms the constraint in the corresponding propositional logic constraint in a feature model. 

Other constraints (e.g., ensuring that certain attributes have to have a certain value) are transformed into feature properties of the (virtual) root feature using operation **unsupportedConstraintToFeatureModelProperty**.

*From feature models to PPR DSL.* 

Operation **featureToProduct** creates a product for each feature. The name of the feature specifies the id of the product and its abstract attribute is set if the feature is abstract. 

The attributes of the product (including its name attribute) are restored from the feature properties using operation **featurePropertiesToProductAttributes**. The operation also restores the product attributes implements and children, because these attributes are pre-defined attributes. 

Operation **impliesConstraintToRequiresAttribute** restores the attribute requires of the source product based on the implies constraints of the feature model. 

Similarly, **excludesConstraintToExcludesAttribute** restores the attribute excludes of the source product based on the excludes constraints of the feature model. 

Other feature model constraints, like pure propositional logic constraints are transformed using operation **propositionalLogicFeatureModelConstraintToConstraint**. The operation transforms the constraint into the same propositional logic constraint of the PPR DSL. 

Other constraints (from the original PPR DSL model) are stored as properties in the root feature and are restored using the operation **rootFeatureModelConstraintPropertiesToConstraints**.
