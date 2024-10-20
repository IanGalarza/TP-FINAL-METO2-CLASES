"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Cliente
	instanceVariableNames: 'direccion correo telefono nroCliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Cliente guid: (GUID fromString: '{F531C219-86DA-44EB-8723-CCEF5A420A6D}')!
Cliente comment: ''!
!Cliente categoriesForClass!Kernel-Objects! !
!Cliente methodsFor!

initClientDireccion: unaDireccion correo: unCorreo telefono: unTelefono nombre: unNombre apellido: unApellido nroCliente: unNum
	super initPersonaNombre: unNombre apellido: unApellido.
	direccion := unaDireccion.
	correo := unCorreo.
	telefono := unTelefono.
	nroCliente := unNum.!

verCorreo
	^correo.!

verDireccion
	^direccion.!

verNroCliente
	^nroCliente .!

verTelefono
	^telefono.! !
!Cliente categoriesFor: #initClientDireccion:correo:telefono:nombre:apellido:nroCliente:!public! !
!Cliente categoriesFor: #verCorreo!public! !
!Cliente categoriesFor: #verDireccion!public! !
!Cliente categoriesFor: #verNroCliente!public! !
!Cliente categoriesFor: #verTelefono!public! !

!Cliente class methodsFor!

crearClienteNombre: unNombre apellido: unApellido direccion:unaDireccion telefono: unTelefono correo: unCorreo nroCliente: unNum
^(self new) initClientDireccion: unaDireccion correo: unCorreo telefono: unTelefono nombre: unNombre apellido: unApellido nroCliente: unNum.! !
!Cliente class categoriesFor: #crearClienteNombre:apellido:direccion:telefono:correo:nroCliente:!public! !

