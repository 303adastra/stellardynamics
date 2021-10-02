Class {
	#name : #SDClockDriveTests,
	#superclass : #TestCase,
	#category : #'StellarDynamics-Tests'
}

{ #category : #'as yet unclassified' }
SDClockDriveTests >> teststepDelay [
	"This test verifies that ClockDrive>>stepDelay returns the expected Delay (square-wave period divided by 2) needed to drive a stepper motor driver on a clockdrive system, such that the Right-Ascension (RA) axis rotates at the Earth's rotation rate, given a Nema17 stepper motor & CG-4 EQ mount"

	| clockdrive stepDelay |
	clockdrive := SDClockDrive new motor: SDNema17 mount: SDCG4.
	stepDelay := clockdrive stepDelay.
	self
		assert: stepDelay asString
		equals: (3314 / 2) milliSeconds asDelay asString
]
