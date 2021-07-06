Class {
	#name : #ClockDriveOS,
	#superclass : #BaselineOf,
	#category : #BaselineOfClockDriveOS
}

{ #category : #baselines }
ClockDriveOS >> baseline: spec [
	"baseline"

	<baseline>
	spec
		for: #common
		do: [ "Dependencies"
			self stellarCartography: spec.	"Packages"
			spec package: 'ClockDriveOS' ]
]

{ #category : #'as yet unclassified' }
ClockDriveOS >> stellarCartography: spec [
	spec
		baseline: 'StellarCartography'
		with: [ spec
				loads: #('default');
				repository: 'github://303adastra/StellarCartography:main' ]
]
