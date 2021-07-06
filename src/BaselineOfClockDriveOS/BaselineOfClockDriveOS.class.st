Class {
	#name : #BaselineOfClockDriveOS,
	#superclass : #BaselineOf,
	#category : #BaselineOfClockDriveOS
}

{ #category : #baselines }
BaselineOfClockDriveOS >> baseline: spec [
	"baseline"

	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self stellarCartography: spec.	"Packages"
			spec package: 'ClockDriveOS' ]
]

{ #category : #'as yet unclassified' }
BaselineOfClockDriveOS >> stellarCartography: spec [
	spec
		baseline: 'StellarCartography'
		with: [ spec
				loads: #('default');
				repository: 'github://303adastra/StellarCartography:main' ]
]
