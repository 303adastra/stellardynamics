Class {
	#name : #SDStepperMotor,
	#superclass : #Object,
	#category : #StellarDynamics
}

{ #category : #'as yet unclassified' }
SDStepperMotor class >> stepsPerRev [
	^ self subclassResponsibility
]
