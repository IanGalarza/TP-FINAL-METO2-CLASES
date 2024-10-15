"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Persona
	instanceVariableNames: 'nombre apellido'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Persona guid: (GUID fromString: '{4d54f059-4431-4d85-9937-e61d0827e7b3}')!
Persona comment: ''!
!Persona categoriesForClass!Kernel-Objects! !
!Persona methodsFor!

initPersonaNombre: unNombre apellido: unApellido
	nombre := unNombre.
	apellido := unApellido.!

verApellido
	^apellido.!

verNombre
	^nombre.! !
!Persona categoriesFor: #initPersonaNombre:apellido:!public! !
!Persona categoriesFor: #verApellido!public! !
!Persona categoriesFor: #verNombre!public! !

