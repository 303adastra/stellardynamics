Class {
	#name : #StepperMotor,
	#superclass : #Object,
	#category : #ClockDriveOS
}

{ #category : #'as yet unclassified' }
StepperMotor class >> stepsPerRev [
	^ self subclassResponsibility
]
