Class {
	#name : #SDClockDrive,
	#superclass : #Object,
	#instVars : [
		'motor',
		'mount'
	],
	#category : #StellarDynamics
}

{ #category : #accessing }
SDClockDrive >> motor [
	^ motor
]

{ #category : #accessing }
SDClockDrive >> motor: aStepperMotorClass [
	motor := aStepperMotorClass
]

{ #category : #'as yet unclassified' }
SDClockDrive >> motor: aStepperMotorClass mount: aMountClass [
	motor := aStepperMotorClass.
	mount := aMountClass.
]

{ #category : #accessing }
SDClockDrive >> mount [
	^ mount
]

{ #category : #accessing }
SDClockDrive >> mount: aMountClass [
	mount := aMountClass
]

{ #category : #'as yet unclassified' }
SDClockDrive >> stepDelay [
	"Returns the step delay (square-wave period divided by 2) needed to drive a stepper motor driver on a clockdrive system, such that the Right-Ascension (RA) axis rotates at the Earth's rotation rate, given the steps per revolution and gear ratio for a specified stepper motor & mount, respectively."

	| earthRotationPeriod |
	earthRotationPeriod := SCEarth rotationPeriod.
	^ (earthRotationPeriod / motor stepsPerRev / mount wormGearRatio / 2)
		asDelay
]
