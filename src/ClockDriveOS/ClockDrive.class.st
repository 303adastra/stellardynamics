Class {
	#name : #ClockDrive,
	#superclass : #Object,
	#instVars : [
		'motor',
		'mount'
	],
	#category : #ClockDriveOS
}

{ #category : #accessing }
ClockDrive >> motor [
	^ motor
]

{ #category : #accessing }
ClockDrive >> motor: aStepperMotorClass [
	motor := aStepperMotorClass
]

{ #category : #'as yet unclassified' }
ClockDrive >> motor: aStepperMotorClass mount: aMountClass [
	motor := aStepperMotorClass.
	mount := aMountClass.
]

{ #category : #accessing }
ClockDrive >> mount [
	^ mount
]

{ #category : #accessing }
ClockDrive >> mount: aMountClass [
	mount := aMountClass
]

{ #category : #'as yet unclassified' }
ClockDrive >> stepDelay [
	"Returns the step delay (square-wave period divided by 2) needed to drive a stepper motor driver on a clockdrive system, such that the Right-Ascension (RA) axis rotates at the Earth's rotation rate, given the steps per revolution and gear ratio for a specified stepper motor & mount, respectively."

	| earthRotationPeriod |
	earthRotationPeriod := Earth rotationPeriod.
	^ (earthRotationPeriod / motor stepsPerRev / mount wormGearRatio / 2)
		asDelay
]
