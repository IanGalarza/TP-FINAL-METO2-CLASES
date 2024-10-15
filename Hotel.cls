"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Hotel
	instanceVariableNames: 'nombre direccion calificacion telefono areas reservas habitaciones servicios'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Hotel guid: (GUID fromString: '{AA75BA27-7BC4-458D-96A2-6F7B348EDA01}')!
Hotel comment: ''!
!Hotel categoriesForClass!Kernel-Objects! !
!Hotel methodsFor!

agregarArea:unaArea
areas add: unaArea.!

agregarHabitacion:unaHab
habitaciones add: unaHab.!

agregarReserva:unaRes
reservas add: unaRes.!

agregarServicio:unServ
servicios add: unServ.!

cantidadAreas
^ areas size.!

cantidadHabitaciones
^ habitaciones size.!

cantidadReservas
^ reservas size.!

cantidadServicios
^ servicios size.!

eliminarArea:unaArea
areas remove: unaArea.!

eliminarHabitacion:unaHab
habitaciones remove: unaHab.!

eliminarReserva:unaRes
reservas remove: unaRes .!

eliminarServicio:unServ
servicios remove: unServ.!

esVaciaAreas
^ areas is empty.!

esVaciaHabitaciones
^ habitaciones is empty.!

esVaciaReservas
^ reservas is empty.!

esVaciaServicios
^ servicios is empty.!

existeArea:unaArea
^ areas include: unaArea.!

existeHabitacion:unaHab
^ habitaciones include: unaHab .!

existeReserva:unaRes
^ reservas include: unaRes.!

existeServicio:unServ
^ servicios include: unServ .!

initHotelnom:unNom dir:unaDir cal:unaCal tel:unTel
nombre:= unNom.
direccion:= unaDir.
calificacion:= unaCal.
telefono:= unTel.
areas:= OrderedCollection new. 
reservas:= OrderedCollection new.
habitaciones:= OrderedCollection new.
servicios:= OrderedCollection new.
!

modiCal:unaCal
calificacion:=unaCal.!

modiDir:unaDir
direccion :=unaDir.!

modiNom:unNom
nombre:=unNom.!

modiTel:unTel
telefono :=unTel.!

recuperarArea: Pos
^ areas at: Pos.!

recuperarHabitacion: Pos
^ habitaciones at: Pos.!

recuperarReserva: Pos
^ reservas at: Pos.!

recuperarServicio: Pos
^ servicios at: Pos.!

todasLasAreas
^ areas.!

todasLasHabitaciones
^ habitaciones.!

todasLasReservas
^ reservas .!

todosLosServicios
^ servicios.!

verCalificacion
^calificacion.!

verDireccion
^direccion.!

verNombre
^nombre.!

verTelefono
^telefono.
! !
!Hotel categoriesFor: #agregarArea:!public! !
!Hotel categoriesFor: #agregarHabitacion:!public! !
!Hotel categoriesFor: #agregarReserva:!public! !
!Hotel categoriesFor: #agregarServicio:!public! !
!Hotel categoriesFor: #cantidadAreas!public! !
!Hotel categoriesFor: #cantidadHabitaciones!public! !
!Hotel categoriesFor: #cantidadReservas!public! !
!Hotel categoriesFor: #cantidadServicios!public! !
!Hotel categoriesFor: #eliminarArea:!public! !
!Hotel categoriesFor: #eliminarHabitacion:!public! !
!Hotel categoriesFor: #eliminarReserva:!public! !
!Hotel categoriesFor: #eliminarServicio:!public! !
!Hotel categoriesFor: #esVaciaAreas!public! !
!Hotel categoriesFor: #esVaciaHabitaciones!public! !
!Hotel categoriesFor: #esVaciaReservas!public! !
!Hotel categoriesFor: #esVaciaServicios!public! !
!Hotel categoriesFor: #existeArea:!public! !
!Hotel categoriesFor: #existeHabitacion:!public! !
!Hotel categoriesFor: #existeReserva:!public! !
!Hotel categoriesFor: #existeServicio:!public! !
!Hotel categoriesFor: #initHotelnom:dir:cal:tel:!public! !
!Hotel categoriesFor: #modiCal:!public! !
!Hotel categoriesFor: #modiDir:!public! !
!Hotel categoriesFor: #modiNom:!public! !
!Hotel categoriesFor: #modiTel:!public! !
!Hotel categoriesFor: #recuperarArea:!public! !
!Hotel categoriesFor: #recuperarHabitacion:!public! !
!Hotel categoriesFor: #recuperarReserva:!public! !
!Hotel categoriesFor: #recuperarServicio:!public! !
!Hotel categoriesFor: #todasLasAreas!public! !
!Hotel categoriesFor: #todasLasHabitaciones!public! !
!Hotel categoriesFor: #todasLasReservas!public! !
!Hotel categoriesFor: #todosLosServicios!public! !
!Hotel categoriesFor: #verCalificacion!public! !
!Hotel categoriesFor: #verDireccion!public! !
!Hotel categoriesFor: #verNombre!public! !
!Hotel categoriesFor: #verTelefono!public! !

!Hotel class methodsFor!

crearHotelnom:unNom dir:unaDir cal:unaCal tel:unTel
^(self new) initnom:unNom dir:unaDir cal:unaCal tel:unTel .! !
!Hotel class categoriesFor: #crearHotelnom:dir:cal:tel:!public! !

