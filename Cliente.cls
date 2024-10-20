"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Cliente
	instanceVariableNames: 'direccion correo telefono'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{f531c219-86da-44eb-8723-ccef5a420a6d}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

initClientDireccion: unaDireccion correo: unCorreo telefono: unTelefono nombre: unNombre apellido: unApellido
	super initPersonaNombre: unNombre apellido: unApellido.
	direccion := unaDireccion.
	correo := unCorreo.
	telefono := unTelefono.!

verCorreo
	^correo.!

verDireccion
	^direccion.!

verTelefono
	^telefono.! !
!Cliente categoriesFor: #initClientDireccion:correo:telefono:nombre:apellido:!public! !
!Cliente categoriesFor: #verCorreo!public! !
!Cliente categoriesFor: #verDireccion!public! !
!Cliente categoriesFor: #verTelefono!public! !

!Cliente class methodsFor!

crearClienteNombre: unNombre apellido: unApellido direccion:unaDireccion telefono: unTelefono correo: unCorreo
^(self new) initClientDireccion: unaDireccion correo: unCorreo telefono: unTelefono nombre: unNombre apellido: unApellido.! !
!Cliente class categoriesFor: #crearClienteNombre:apellido:direccion:telefono:correo:!public! !

