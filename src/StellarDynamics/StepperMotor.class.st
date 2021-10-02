Class {
	#name : #StepperMotor,
	#superclass : #Object,
	#category : #StellarDynamics
}

{ #category : #'as yet unclassified' }
StepperMotor class >> stepsPerRev [
	^ self subclassResponsibility
]
