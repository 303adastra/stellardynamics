Class {
	#name : #BaselineOfStellarDynamics,
	#superclass : #BaselineOf,
	#category : #BaselineOfStellarDynamics
}

{ #category : #baselines }
BaselineOfStellarDynamics >> baseline: spec [
	"baseline"

	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self stellarCartography: spec.	"Packages"
			spec package: 'StellarDynamics' ]
]

{ #category : #'as yet unclassified' }
BaselineOfStellarDynamics >> stellarCartography: spec [
	spec
		baseline: 'StellarCartography'
		with: [ spec
				loads: #('default');
				repository: 'github://303adastra/StellarCartography:main' ]
]
