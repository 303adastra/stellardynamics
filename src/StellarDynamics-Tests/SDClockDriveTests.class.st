Class {
	#name : #SDClockDriveTests,
	#superclass : #TestCase,
	#category : #'StellarDynamics-Tests'
}

{ #category : #'as yet unclassified' }
SDClockDriveTests >> teststepDuration [
	"This test verifies that SDClockDrive>>stepDuration returns the expected Duration (square-wave period) needed to drive a stepper motor driver on a clockdrive system, such that the Right-Ascension (RA) axis rotates at the Earth's rotation rate"

	| clockdrive stepDuration |
	clockdrive := SDClockDrive new
		stepsPerRev: 200
		microstepResolution: 1 / 32
		wormGearRatio: 130.
	stepDuration := clockdrive stepDuration.
	self assert: stepDuration equals: (3314 / 32) milliSeconds asDuration
]
