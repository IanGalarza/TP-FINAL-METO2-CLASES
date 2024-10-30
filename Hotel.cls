"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Hotel
	instanceVariableNames: 'nombre direccion calificacion telefono areas reservas habitaciones servicios clientes'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Hotel guid: (GUID fromString: '{AA75BA27-7BC4-458D-96A2-6F7B348EDA01}')!
Hotel comment: ''!
!Hotel categoriesForClass!Kernel-Objects! !
!Hotel methodsFor!

agregarArea:unaArea
areas add: unaArea.!

agregarCliente:unClient
clientes add: unClient .!

agregarHabitacion:unaHab
habitaciones add: unaHab.!

agregarReserva:unaRes
reservas add: unaRes.!

agregarServicio:unServ
servicios add: unServ.!

buscarCliente: unNum
 ^ clientes detect: [:client |  client verNroCliente = unNum ] ifNone: [nil].
!

buscarHabitacionDisponibleTipo: unTipo
    ^ habitaciones detect: [:hab | (hab verEstado = true and: [hab verTipo = unTipo])] ifNone: [nil].
!

buscarHabitacionPorNumero: unNum
^ habitaciones detect: [:hab | hab verNroHab = unNum] ifNone: [nil].!

cantidadAreas
^ areas size.!

cantidadClientes
^ clientes size.!

cantidadHabitaciones
^ habitaciones size.!

cantidadReservas
^ reservas size.!

cantidadServicios
^ servicios size.!

eliminarArea:unaArea
areas remove: unaArea.!

eliminarCliente:unClient
clientes remove: unClient .!

eliminarHabitacion:unaHab
habitaciones remove: unaHab.!

eliminarReserva:unaRes
reservas remove: unaRes .!

eliminarServicio:unServ
servicios remove: unServ.!

esVaciaAreas
^ areas empty.!

esVaciaClientes
^ clientes empty.!

esVaciaHabitaciones
^ habitaciones empty.!

esVaciaReservas
^ reservas empty.!

esVaciaServicios
^ servicios empty.!

existeArea:unaArea
^ areas includes: unaArea.!

existeCliente:unClient
^ clientes includes: unClient .!

existeHabitacion:unaHab
^ habitaciones includes: unaHab .!

existeReserva:unaRes
^ reservas includes: unaRes.!

existeServicio:unServ
^ servicios includes: unServ .!

initHotelnom:unNom dir:unaDir cal:unaCal tel:unTel
nombre:= unNom.
direccion:= unaDir.
calificacion:= unaCal.
telefono:= unTel.
areas:= OrderedCollection new. 
reservas:= OrderedCollection new.
habitaciones:= OrderedCollection new.
servicios:= OrderedCollection new.
clientes:= OrderedCollection new.
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

recuperarCliente: Pos
^ clientes at: Pos.!

recuperarHabitacion: Pos
^ habitaciones at: Pos.!

recuperarReserva: Pos
^ reservas at: Pos.!

recuperarServicio: Pos
^ servicios at: Pos.!

reservasVigentes
|fechaActual col|
fechaActual := Date today.
col := self todasLasReservas.

^col select: [:reserva | reserva esVigente: fechaActual ]. 
!

todasLasAreas
^ areas.!

todasLasHabitaciones
^ habitaciones.!

todasLasReservas
^ reservas .!

todosLosClientes
^ clientes .!

todosLosServicios
^ servicios.!

verCalificacion
^calificacion.!

verDireccion
^direccion.!

verHabitacionesPorTipo: unTipo
| listaHabitaciones |
listaHabitaciones := self todasLasHabitaciones.
^ listaHabitaciones detect: [:habitacion | habitacion verTipo = unTipo] ifNone: [nil].


	!

verNombre
^nombre.!

verTelefono
^telefono.
! !
!Hotel categoriesFor: #agregarArea:!public! !
!Hotel categoriesFor: #agregarCliente:!public! !
!Hotel categoriesFor: #agregarHabitacion:!public! !
!Hotel categoriesFor: #agregarReserva:!public! !
!Hotel categoriesFor: #agregarServicio:!public! !
!Hotel categoriesFor: #buscarCliente:!public! !
!Hotel categoriesFor: #buscarHabitacionDisponibleTipo:!public! !
!Hotel categoriesFor: #buscarHabitacionPorNumero:!public! !
!Hotel categoriesFor: #cantidadAreas!public! !
!Hotel categoriesFor: #cantidadClientes!public! !
!Hotel categoriesFor: #cantidadHabitaciones!public! !
!Hotel categoriesFor: #cantidadReservas!public! !
!Hotel categoriesFor: #cantidadServicios!public! !
!Hotel categoriesFor: #eliminarArea:!public! !
!Hotel categoriesFor: #eliminarCliente:!public! !
!Hotel categoriesFor: #eliminarHabitacion:!public! !
!Hotel categoriesFor: #eliminarReserva:!public! !
!Hotel categoriesFor: #eliminarServicio:!public! !
!Hotel categoriesFor: #esVaciaAreas!public! !
!Hotel categoriesFor: #esVaciaClientes!public! !
!Hotel categoriesFor: #esVaciaHabitaciones!public! !
!Hotel categoriesFor: #esVaciaReservas!public! !
!Hotel categoriesFor: #esVaciaServicios!public! !
!Hotel categoriesFor: #existeArea:!public! !
!Hotel categoriesFor: #existeCliente:!public! !
!Hotel categoriesFor: #existeHabitacion:!public! !
!Hotel categoriesFor: #existeReserva:!public! !
!Hotel categoriesFor: #existeServicio:!public! !
!Hotel categoriesFor: #initHotelnom:dir:cal:tel:!public! !
!Hotel categoriesFor: #modiCal:!public! !
!Hotel categoriesFor: #modiDir:!public! !
!Hotel categoriesFor: #modiNom:!public! !
!Hotel categoriesFor: #modiTel:!public! !
!Hotel categoriesFor: #recuperarArea:!public! !
!Hotel categoriesFor: #recuperarCliente:!public! !
!Hotel categoriesFor: #recuperarHabitacion:!public! !
!Hotel categoriesFor: #recuperarReserva:!public! !
!Hotel categoriesFor: #recuperarServicio:!public! !
!Hotel categoriesFor: #reservasVigentes!public! !
!Hotel categoriesFor: #todasLasAreas!public! !
!Hotel categoriesFor: #todasLasHabitaciones!public! !
!Hotel categoriesFor: #todasLasReservas!public! !
!Hotel categoriesFor: #todosLosClientes!public! !
!Hotel categoriesFor: #todosLosServicios!public! !
!Hotel categoriesFor: #verCalificacion!public! !
!Hotel categoriesFor: #verDireccion!public! !
!Hotel categoriesFor: #verHabitacionesPorTipo:!public! !
!Hotel categoriesFor: #verNombre!public! !
!Hotel categoriesFor: #verTelefono!public! !

!Hotel class methodsFor!

crearHotelnom:unNom dir:unaDir cal:unaCal tel:unTel
^(self new) initHotelnom:unNom dir:unaDir cal:unaCal tel:unTel.! !
!Hotel class categoriesFor: #crearHotelnom:dir:cal:tel:!public! !

