Extension { #name : #Model }

{ #category : #'*PharoLauncher-Pharo6' }
Model >> whenChangedDo: aBlock [
	"Culled block [ :newValue :oldValue :announcement :announcer | ]"

	| block |
	block := [ :announcement :ann | 
	aBlock
		cull: announcement newValue
		cull: announcement oldValue
		cull: announcement
		cull: ann ].
	self announcer when: ValueChanged do: block
]
