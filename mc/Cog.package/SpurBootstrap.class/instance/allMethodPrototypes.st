method prototypes
allMethodPrototypes
	"Answer all prototype selectors, including those marked <remove>"
	^(imageTypes 
		inject: (IdentitySet withAll: SpurBootstrapPrototypes new allMethodPrototypes)
		into: [:allPrototypes :type | | prototypes |
			prototypes := (SpurBootstrapPrototypes prototypesFor: type) allMethodPrototypes.
			allPrototypes
				removeAllSuchThat: [:existing| prototypes anySatisfy: [:new| existing selector == new selector]];
				addAll: prototypes;
				yourself])
		asArray sort: [:ma :mb| ma selector <= mb selector]