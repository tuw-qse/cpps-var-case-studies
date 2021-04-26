# CPPS Variaility Case Studies

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
