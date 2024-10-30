"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Reserva
	instanceVariableNames: 'fechaInicio fechaFin estadoReserva cantidadHuesped numeroHabitacion numeroReserva numeroCliente'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Reserva guid: (GUID fromString: '{FF4E76EB-4D88-49AF-BEA6-01B6A7560144}')!
Reserva comment: ''!
!Reserva categoriesForClass!Kernel-Objects! !
!Reserva methodsFor!

cantHuesped
	^cantidadHuesped.!

esVigente: unaFecha
^(fechaInicio <= unaFecha) and: [fechaFin >= unaFecha ].!

initReservaIni:unaFechaIni Fin:unaFechaFin cantHuesp:unaCant numHab:unNroHab nroRes:unNroRes nroCliente:unNroCliente
fechaInicio := Date fromString: unaFechaIni format: 'dd-mm-yyyy'.
fechaFin := Date fromString: unaFechaFin format: 'dd-mm-yyyy'.
estadoReserva := true.
cantidadHuesped := unaCant.
numeroReserva := unNroRes.
numeroHabitacion := unNroHab.
numeroCliente := unNroCliente.
!

modiEstadoReserva:unEstado
estadoReserva := unEstado.!

modiFechaFin:unaFecha
fechaFin := unaFecha.!

modiFechaInicio:unaFecha 
fechaInicio := unaFecha.!

modiNumeroHabitacion:unNro
numeroHabitacion := unNro.!

verEstadoReserva
	^estadoReserva!

verFechaFin
	^fechaFin!

verFechaInicio
	^fechaInicio.!

verNumeroCliente
	^numeroCliente.!

verNumeroHabitacion
	^numeroHabitacion!

verNumeroReserva
	^numeroReserva.! !
!Reserva categoriesFor: #cantHuesped!public! !
!Reserva categoriesFor: #esVigente:!public! !
!Reserva categoriesFor: #initReservaIni:Fin:cantHuesp:numHab:nroRes:nroCliente:!public! !
!Reserva categoriesFor: #modiEstadoReserva:!public! !
!Reserva categoriesFor: #modiFechaFin:!public! !
!Reserva categoriesFor: #modiFechaInicio:!public! !
!Reserva categoriesFor: #modiNumeroHabitacion:!public! !
!Reserva categoriesFor: #verEstadoReserva!public! !
!Reserva categoriesFor: #verFechaFin!private! !
!Reserva categoriesFor: #verFechaInicio!private! !
!Reserva categoriesFor: #verNumeroCliente!public! !
!Reserva categoriesFor: #verNumeroHabitacion!public! !
!Reserva categoriesFor: #verNumeroReserva!public! !

!Reserva class methodsFor!

crearReservaIni:unaFechaIni Fin:unaFechaFin cantHuesp:unaCant numHab:unNroHab nroRes:unNroRes nroCliente:unNroCliente
^(self new) initReservaIni: unaFechaIni Fin: unaFechaFin cantHuesp: unaCant numHab: unNroHab nroRes: unNroRes nroCliente: unNroCliente.! !
!Reserva class categoriesFor: #crearReservaIni:Fin:cantHuesp:numHab:nroRes:nroCliente:!public! !

