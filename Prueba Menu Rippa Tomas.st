| hotel op hab nroHab tip prec nroClient c n a d t em  cliente cl res tipoHab cant fin ini nroCliente reserva tipSel habTip habOp diccionario col cantHuespedReserva cantUnica clientePreCarga habitacionPreCarga reservasOrdenadas col2 reservasFinalizadas habitacionesParaActualizar habitacion orden opcion fechaActual reservaPreCarga clientes|

"CREAR HOTEL"
hotel:= Hotel crearHotelnom: 'Costa Galana'  dir: 'Av. Peralta ramos 5725' cal: 4.6 tel: '0223 410-5000'.

"Pre carga de datos"

habitacionPreCarga := Habitacion crearHabitacionNro: 101 tipo: 'Individual' precioPorNoche: 1500.
hotel agregarHabitacion: habitacionPreCarga.
habitacionPreCarga := Habitacion crearHabitacionNro: 102 tipo: 'Doble' precioPorNoche: 2500.
hotel agregarHabitacion: habitacionPreCarga.
habitacionPreCarga :=  Habitacion crearHabitacionNro: 103 tipo: 'Suite' precioPorNoche: 5000.
hotel agregarHabitacion: habitacionPreCarga.
habitacionPreCarga := Habitacion crearHabitacionNro: 104 tipo: 'Triple' precioPorNoche: 3500.
hotel agregarHabitacion: habitacionPreCarga.
habitacionPreCarga := Habitacion crearHabitacionNro: 105 tipo: 'Familiar' precioPorNoche: 4500.
hotel agregarHabitacion: habitacionPreCarga.
habitacionPreCarga := Habitacion crearHabitacionNro: 106 tipo: 'Individual' precioPorNoche: 1500.
hotel agregarHabitacion: habitacionPreCarga.
habitacionPreCarga := Habitacion crearHabitacionNro: 107 tipo: 'Suite' precioPorNoche: 1500.
hotel agregarHabitacion: habitacionPreCarga.


clientePreCarga := Cliente crearClienteNombre: 'Juan' apellido: 'Pérez' direccion: 'Calle Ficticia 123' telefono: '223 1234567' correo: 'juan.perez@example.com' nroCliente: 01.
hotel agregarCliente: clientePreCarga.
clientePreCarga := Cliente crearClienteNombre: 'María' apellido: 'Gómez' direccion: 'Av. Libertad 456' telefono: '223 7654321' correo: 'maria.gomez@example.com' nroCliente: 02.
hotel agregarCliente: clientePreCarga.
clientePreCarga := Cliente crearClienteNombre: 'Carlos' apellido: 'Martínez' direccion: 'Calle 9 de Julio 789' telefono: '223 9876543' correo: 'carlos.martinez@example.com' nroCliente: 03.
hotel agregarCliente: clientePreCarga.
clientePreCarga := Cliente crearClienteNombre: 'Laura' apellido: 'Rodríguez' direccion: 'Calle San Martín 1010' telefono: '223 2468101' correo: 'laura.rodriguez@example.com' nroCliente: 04.
hotel agregarCliente: clientePreCarga.
clientePreCarga := Cliente crearClienteNombre: 'Pedro' apellido: 'Díaz' direccion: 'Calle Belgrano 2020' telefono: '223 1122334' correo: 'pedro.diaz@example.com' nroCliente: 05.
hotel agregarCliente: clientePreCarga.

reservaPreCarga := Reserva crearReservaIni: '28/6/2024' Fin:  '7/7/2024'  cantHuesp: 1 numHab: 101 nroRes: 2 nroCliente: 2.
hotel agregarReserva: reservaPreCarga.
reservaPreCarga := Reserva crearReservaIni: '29/6/2024' Fin:  '8/7/2024'  cantHuesp: 1 numHab: 102 nroRes: 1 nroCliente: 1.
hotel agregarReserva: reservaPreCarga.
reservaPreCarga := Reserva crearReservaIni: '10/6/2024' Fin:  '1/7/2024'  cantHuesp: 2 numHab: 103 nroRes: 3 nroCliente: 3.
hotel agregarReserva: reservaPreCarga.
reservaPreCarga := Reserva crearReservaIni: '11/6/2024' Fin:  '2/7/2024'  cantHuesp: 2 numHab: 104 nroRes: 4 nroCliente: 3.
hotel agregarReserva: reservaPreCarga.


"Prueba Menu con aplicacion funcional"

Transcript clear;
show: '-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------' ;
cr;
show: '--------------------------------------------------------------------------------------------- Bienvenido a  ',  hotel verNombre printString , '----------------------------------------------------------------------------------------';
cr;
show: '-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------';
cr.
Transcript show: 'Seleccione una opcion: '; cr.
Transcript show: '1. Cargar nuevas habitaciones en el hotel.'; cr.
Transcript show: '2. Cargar nuevos clientes en el hotel.'; cr.
Transcript show: '3. Realizar una nueva reserva.'; cr.
Transcript show: '4. Ver las habitaciones por tipo.'; cr.
Transcript show: '5. Ver las habitaciones ocupadas.'; cr.
Transcript show: '6. Mostrar cantidad de reservas por cantidad de huespedes'; cr.
Transcript show: '7. Ver todas las habitaciones.'; cr.
Transcript show: '8. Ver todos los clientes.'; cr.
Transcript show: '9. Ver todas las reservas ordenadas por fecha.'; cr.
Transcript show: '10. Modificar el estado de las habitaciones ocupadas que no se encuentren en reservas vigentes.'; cr.
Transcript show: '0. Salir del programa.'; cr.
Transcript show: '----------------------------------------------------------------------------------------------------'; cr.

op:= (Prompter prompt: ' Ingrese una opcion o 0 para salir del sistema:  ') asNumber.
[op ~= 0] whileTrue: [
	(op = 1) ifTrue: [ nroHab:= (Prompter prompt: 'Ingrese el Numero de Habitacion: ') asNumber.
					tip:= Prompter prompt: 'Ingrese el tipo de Habitacion: '.
					prec:= (Prompter prompt: 'Ingrese el precio de la Habitacion: ') asNumber.
					
					hab:= Habitacion crearHabitacionNro: nroHab tipo: tip precioPorNoche: prec.
					hotel agregarHabitacion: hab.
					MessageBox notify: 'Habitacion agregada exitosamente!'.
					Transcript show: 'Se registro la habitacion correctamente' ;cr].

	(op = 2 ) ifTrue: [ nroClient:= (Prompter prompt: 'Ingrese el Numero del Cliente: ') asNumber.
					n:= Prompter prompt: 'Ingrese el nombre del Cliente: '.
					a:= Prompter prompt: 'Ingrese el apellido del Cliente: '.
					d:= Prompter prompt: 'Ingrese la direccion del cliente: '.
					t:= Prompter prompt: 'Ingrese el numero de telefono del cliente: '.
					em:= Prompter prompt: 'Ingrese el correo del cliente: '.
					
					c:= Cliente crearClienteNombre: n apellido: a direccion: d telefono: t correo: em nroCliente: nroClient.
					hotel agregarCliente: c.
					MessageBox notify: 'Cliente agregado exitosamente!'.
					Transcript show: 'Se registro el cliente correctamente' ;cr].

	(op = 3) ifTrue: [ nroCliente:= (Prompter prompt: 'Ingrese el Numero del cliente para realizar la reserva: ') asNumber.
			cliente:= hotel buscarCliente: nroCliente.
			(cliente ~= nil)  ifTrue: [ ini := Prompter prompt: 'Ingrese la Fecha de inicio de la reserva'.
				fin:= Prompter prompt: 'Ingrese la Fecha de fin de la reserva'.
				cant := Prompter prompt: 'Ingrese la cantidad de huespedes de la reserva'.
				tipoHab:= Prompter prompt: 'Ingrese el Tipo de la habitacion que desea reservar'.

				"Se busca si hay alguna habitacion disponible"

				hab := hotel buscarHabitacionDisponibleTipo: tipoHab.
				(hab ~= nil) ifTrue: [
					nroHab := hab verNroHab.
					res := Prompter prompt: 'Ingrese el numero de reserva'.
					cl := cliente verNroCliente.

					"Creo la reserva"

					reserva := Reserva crearReservaIni: ini Fin: fin cantHuesp: cant numHab: nroHab nroRes: res nroCliente: cl.
					hotel agregarReserva: reserva.

					"Cambio de estado de la habitacion"

					hab modiEstado: false.

					MessageBox notify: 'Reserva agregada exitosamente!'.
					Transcript show: 'Se registro la reserva correctamente'; cr.
					Transcript show: '----------------------------------------------------------------------------------------------------'; cr.]

				ifFalse: [Transcript show: 'No hay ninguna habitacion disponible'; cr.
				MessageBox warning: ' No hay ninguna habitacion disponible'.
				Transcript show: '----------------------------------------------------------------------------------------------------'; cr.].

		] ifFalse: [ Transcript show: 'El cliente no se encuentra registrado'; cr.
				MessageBox warning: 'El cliente no se encuentra registrado'.
				Transcript show: '----------------------------------------------------------------------------------------------------'; cr.].
	].
	
	(op = 4) ifTrue: [ tipSel:= Prompter prompt: 'Ingrese el tipo de habitacion' .

				"Uso de select"

				habTip:= (hotel todasLasHabitaciones) select: [:habitacion | habitacion verTipo = tipSel].
				
				"Chequeo si hay habitaciones de ese tipo"
			
				(habTip isEmpty) ifTrue: [ Transcript show: 'No se encontraron habitaciones del tipo ingresado.'; cr.
									MessageBox warning: 'No hay habitaciones de ese tipo'.]
							  ifFalse: [ Transcript show: 'Habitaciones de tipo: ', tipSel printString; cr.
									Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
									habTip do: [:habitacion | 
									Transcript show: 'Número de habitación: ', habitacion verNroHab printString; cr.
									Transcript show: 'Estado: ', habitacion verEstado printString; cr. 
									Transcript show: 'Precio por Noche: ', habitacion verPrecioPorNoche printString; cr.
									Transcript show: '----------------------------------------------------------------------------------------------------'; cr.].].].

	(op = 5) ifTrue: [

				"Uso de reject - Muestro todas las habitaciones menos las disponibles"

				habOp := (hotel todasLasHabitaciones) reject: [:habitacion | habitacion verEstado = true].

				(habOp isEmpty) ifTrue: [Transcript show: 'No hay habitaciones ocupadas.'; cr.
								      MessageBox warning: 'No hay habitaciones ocupadas'. ]
							ifFalse: [Transcript show: 'Habitaciones ocupadas:'; cr.
									Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
									habOp do: [:habitacion | 
									Transcript show: 'Número de habitación: ', habitacion verNroHab printString; cr.
									Transcript show: 'Tipo: ', habitacion verTipo printString; cr. 
									Transcript show: 'Precio por Noche: ', habitacion verPrecioPorNoche printString; cr.
									Transcript show: '----------------------------------------------------------------------------------------------------'; cr.].].].


	(op = 6) ifTrue: [

				Transcript show: 'Reservas agrupadas por cantidad de huéspedes:'; cr.
				Transcript show: '----------------------------------------------------------------------------------------------------'; cr.

				"Creo una coleccion temporal para almacenar todas las cantidades de huespedes de cada resreva"
				cantHuespedReserva := OrderedCollection new.
				
				hotel todasLasReservas do: [:reserva | cantHuespedReserva add: reserva cantHuesped].
			
				"Creo una variable para tener unicamente la cantidad de cada uno"
				
				cantUnica := cantHuespedReserva asSet.

				"Lleno el diccionario con las cantidades de cada reserva"

				diccionario := Dictionary new.

				cantUnica do: [:cant | diccionario at: cant put: (cantHuespedReserva occurrencesOf: cant)].

				"Imprimo el diccionario"
			
				diccionario keysDo: [:key |
					Transcript show: 'La cantidad de reservas con '.
					key printOn: Transcript.
					Transcript nextPutAll: ' huesped son las siguientes:  '.
					(diccionario at: key) printOn: Transcript.
					Transcript cr.
						].
				Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
					].

	(op = 7) ifTrue: [
				Transcript show: 'Habitaciones cargadas en el sistema: '; cr.
				Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
				col := hotel todasLasHabitaciones.
				1 to: (col size ) do: [:i | 
						Transcript show: 'Numero de habitacion: ', (col at: i) verNroHab printString; cr.
						Transcript show: 'Tipo: ', (col at:i) verTipo printString; cr.
						Transcript show: 'Precio por Noche: ', (col at:i) verPrecioPorNoche printString; cr. 
						Transcript show: 'Estado: ', (col at:i)  verEstado printString; cr.
						Transcript show: '----------------------------------------------------------------------------------------------------'; cr.]].

	(op = 8) ifTrue: [
				Transcript show: 'Clientes cargados en el sistema: '; cr.
				Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
				col := hotel todosLosClientes.
				1 to: (col size) do: [:i |
						Transcript show: 'Numero de cliente: ', (col at: i) verNroCliente printString; cr.
						Transcript show: 'Nombre: ', (col at: i) verNombre printString; cr.
						Transcript show: 'Apellido: ', (col at: i) verApellido printString; cr.
						Transcript show: 'Direccion: ', (col at: i) verDireccion printString; cr.
						Transcript show: 'Telefono: ', (col at: i) verTelefono printString; cr.
						Transcript show: 'Correo electronico: ', (col at: i) verCorreo printString; cr.
						Transcript show: '----------------------------------------------------------------------------------------------------'; cr.]].

	(op = 9) ifTrue: [
				"Verifico que haya reservas cargadas."
				 col := hotel todasLasReservas.
				(col isEmpty) 
					ifFalse:[
						"Elijo en que orden mostrar las reservas."
						opcion := (Prompter prompt: 'Elija el orden de las reservas: 1 para Ascendente, 2 para Descendente' ) asNumber.				
						(opcion = 1 or: [opcion = 2]) 
							ifFalse: [					
								Transcript show: 'Error: Opcion no valida. Por favor, ingrese 1 o 2.'; cr.
								MessageBox warning: 'Error: Opcion no valida. Por favor, ingrese 1 o 2.'.					
								Transcript show: '----------------------------------------------------------------------------------------------------'; cr.]				
					ifTrue: [
						orden := (opcion = 1).					
						Transcript show: 'Reservas ordenadas por fecha: '; cr.
						Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
					
						"Se utiliza una SortedCollection para ordernar las reservas en funcion de la opcion elegida."
						reservasOrdenadas := col asSortedCollection: [:reserva1 :reserva2 | orden
							ifTrue: [reserva1 verFechaInicio <= reserva2 verFechaInicio]
							ifFalse: [reserva1 verFechaInicio >= reserva2 verFechaInicio]].
							

						reservasOrdenadas do: [:reserva | 
							Transcript show: 'Fecha de Inicio:', reserva verFechaInicio printString; cr.
							Transcript show: 'Fecha de Fin:', reserva verFechaFin printString; cr.
							Transcript show: 'Estado de la Reserva:', reserva verEstadoReserva printString; cr.
							Transcript show: 'Cantidad de Huespedes:', reserva cantHuesped printString; cr.
							Transcript show: 'Numero de Habitacion:', reserva verNumeroHabitacion printString; cr.
							Transcript show: 'Numero de Cliente:', reserva verNumeroCliente printString; cr.
							Transcript show: 'Numero de Reserva:', reserva verNumeroReserva printString; cr.
							Transcript show: '----------------------------------------------------------------------------------------------------'; cr.]].
					] ifTrue: [
					"Si no hay reservas, devuelvo un mensaje de error."
					Transcript show: 'Error: No hay reservas para mostrar'; cr.
					MessageBox warning: 'Error: No hay reservas para mostrar.'.
					Transcript show: '----------------------------------------------------------------------------------------------------'; cr.]].
	(op = 10) ifTrue: [
				"Obtengo todas las reservas"
				col := hotel todasLasReservas.
				"Obtengo las reservas vigentes."
				col2 := hotel reservasVigentes.
				"Obtengo la fecha actual."
				fechaActual := Date today.
				"Filtro las reservas que ya hayan finalizado."
				reservasFinalizadas := col select: [:reserva | reserva verFechaFin < fechaActual].
				"Utilizo un collect para formar una coleccion con los numeros de habitacion de las reservas finalizadas."
				habitacionesParaActualizar := reservasFinalizadas collect: [:reserva | reserva verNumeroHabitacion ].				
				"Recupero las habitaciones "
				habitacionesParaActualizar do: [:nroHab |
					habitacion := hotel buscarHabitacionPorNumero: nroHab.
					"Verifico que la habitacion no este en alguna reserva vigente."
					(col2 detect: [:reserva | reserva verNumeroHabitacion  = nroHab] ifNone: [nil]) isNil ifTrue: [
						habitacion modiEstado: true.
						Transcript show: 'Habitacion ', nroHab printString, ' marcada como disponible.'; cr.]
				].
					
	].
	(op = 11) ifTrue: [| habitacionesOrdenadas|
		col := hotel todasLasHabitaciones.
		opcion := (Prompter prompt: '1 para ordenar de manera descendiente 2 para ascendente')asNumber.
		orden := (opcion = 1).
		"orden := false ."
		reservasOrdenadas:= col asSortedCollection: [:habitacion1 :habitacion2 |orden
		ifTrue: [habitacion1 verNroHab <= habitacion2 verNroHab]
		ifFalse: [habitacion1 verNroHab >= habitacion2 verNroHab]].
		
		reservasOrdenadas do: [:habitacion |Transcript show: 'Número de habitación: ', habitacion verNroHab printString; cr.
									Transcript show: 'Tipo: ', habitacion verTipo printString; cr. 
									Transcript show: 'Precio por Noche: ', habitacion verPrecioPorNoche printString; cr.
									Transcript show:'----------------------------------------------------------------------------------------------';cr.].
	].
	(op = 12) ifTrue: [col := hotel todasLasReservas.
				clientes := OrderedCollection new.
				hotel todasLasReservas do: [:reserva | clientes add: reserva verNumeroCliente ].
				cantUnica := clientes asSet.
				diccionario := Dictionary new.
					
				cantUnica do: [:cant | diccionario at: cant put: (clientes occurrencesOf: cant )].

				diccionario keysDo: [:key |
					Transcript show: 'La el cliente Nro '.
					key printOn: Transcript.
					Transcript nextPutAll: ' realizo '.
					(diccionario at: key) printOn: Transcript.
					Transcript show: ' reservas'.
					Transcript cr.
				].
					Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
	].
				

	
		
	"Pregunta por opcion o cerrar el menu"
	op := (Prompter prompt: ' Ingrese una opcion o 0 para salir del sistema: ') asNumber.

	"Una vez seleccionado una opcion, limpio el menu previo e informacion previa"
	Transcript clear.
	Transcript show: 'Seleccione una opcion: '; cr.
	Transcript show: '1. Cargar nuevas habitaciones en el hotel.'; cr.
	Transcript show: '2. Cargar nuevos clientes en el hotel.'; cr.
	Transcript show: '3. Realizar una nueva reserva.'; cr.
	Transcript show: '4. Ver las habitaciones por tipo.'; cr.
	Transcript show: '5. Ver las habitaciones ocupadas.'; cr.
	Transcript show: '6. Mostrar cantidad de reservas por cantidad de huespedes'; cr.
	Transcript show: '7. Ver todas las habitaciones.'; cr.
	Transcript show: '8. Ver todos los clientes.'; cr.
	Transcript show: '9. Ver todas las reservas ordenadas por fecha.'; cr.
	Transcript show: '10. Modificar el estado de las habitaciones ocupadas que no se encuentren en reservas vigentes..'; cr.
	Transcript show: '11. Ver habitaciones ordenadas.'; cr.
	Transcript show: '12. Ver cantidad de reservas por cliente.'; cr.
	Transcript show: '0. Salir del programa'; cr.
	Transcript show: '----------------------------------------------------------------------------------------------------'; cr.
].
					
					
					
