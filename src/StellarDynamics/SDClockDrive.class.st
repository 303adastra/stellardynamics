Class {
	#name : #SDClockDrive,
	#superclass : #Object,
	#instVars : [
		'stepsPerRev',
		'microstepResolution',
		'wormGearRatio'
	],
	#category : #StellarDynamics
}

{ #category : #'as yet unclassified' }
SDClockDrive >> stepDuration [
	"Returns the step duration (square-wave period divided by 2) needed to drive a stepper motor driver on a clockdrive system, such that the Right-Ascension (RA) axis rotates at the Earth's rotation rate, given the steps per revolution and microstep resolution for a stepper motor and worm gear ratio for an equatorial mount."

	| earthRotationPeriod |
	earthRotationPeriod := SCEarth rotationPeriod.
	^ (earthRotationPeriod / stepsPerRev * microstepResolution
		/ wormGearRatio) asDuration
]

{ #category : #'as yet unclassified' }
SDClockDrive >> stepsPerRev: anInteger microstepResolution: anInteger2 wormGearRatio: anInteger3 [
	stepsPerRev := anInteger.
	microstepResolution := anInteger2.
	wormGearRatio := anInteger3
]
