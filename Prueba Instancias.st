| hotel c h  reserva factura nroCliente  cliente ini fin cant  tipoHab hab res cl nroHab|

"CREAR HOTEL"
hotel:= Hotel crearHotelnom: 'Costa Galana'  dir: 'Av. Peralta ramos 5725' cal: 4.6 tel: '0223 410-5000'.

"Creacion Habitaciones"
h := Habitacion crearHabitacionnroHab: 101 tipo: 'Individual' precioPorNoche: 1500.
hotel agregarHabitacion: h.
h := Habitacion crearHabitacionnroHab: 102 tipo: 'Doble' precioPorNoche: 2500.
hotel agregarHabitacion: h.
h := Habitacion crearHabitacionnroHab: 103 tipo: 'Suite' precioPorNoche: 5000.
hotel agregarHabitacion: h.
h := Habitacion crearHabitacionnroHab: 104 tipo: 'Triple' precioPorNoche: 3500.
hotel agregarHabitacion: h.
h := Habitacion crearHabitacionnroHab: 105 tipo: 'Familiar' precioPorNoche: 4500.
hotel agregarHabitacion: h.
h := Habitacion crearHabitacionnroHab: 106 tipo: 'Individual' precioPorNoche: 1500.
hotel agregarHabitacion: h.
h := Habitacion crearHabitacionnroHab: 107 tipo: 'Suite' precioPorNoche: 1500.
hotel agregarHabitacion: h.

"Creacion  Clientes"
c := Cliente crearClienteNombre: 'Juan' apellido: 'Pérez' direccion: 'Calle Ficticia 123' telefono: '223 1234567' correo: 'juan.perez@example.com' nroCliente: 01.
hotel agregarCliente: c.
c := Cliente crearClienteNombre: 'María' apellido: 'Gómez' direccion: 'Av. Libertad 456' telefono: '223 7654321' correo: 'maria.gomez@example.com' nroCliente: 02.
hotel agregarCliente: c.
c := Cliente crearClienteNombre: 'Carlos' apellido: 'Martínez' direccion: 'Calle 9 de Julio 789' telefono: '223 9876543' correo: 'carlos.martinez@example.com' nroCliente: 03.
hotel agregarCliente: c.
c := Cliente crearClienteNombre: 'Laura' apellido: 'Rodríguez' direccion: 'Calle San Martín 1010' telefono: '223 2468101' correo: 'laura.rodriguez@example.com' nroCliente: 04.
hotel agregarCliente: c.
c := Cliente crearClienteNombre: 'Pedro' apellido: 'Díaz' direccion: 'Calle Belgrano 2020' telefono: '223 1122334' correo: 'pedro.diaz@example.com' nroCliente: 05.
hotel agregarCliente: c.

"Eligiendo un cliente para crear la reserva"

nroCliente:= (Prompter prompt: 'Ingrese el Numero del cliente para realizar la reserva: ') asNumber.
cliente:= hotel buscarCliente: nroCliente.
cliente inspect.

"Creacion reserva"

(cliente ~= nil)  ifTrue: [ ini := Prompter prompt: 'Ingrese la Fecha de inicio de la reserva'.
fin:= Prompter prompt: 'Ingrese la Fecha de fin de la reserva'.
cant := Prompter prompt: 'Ingrese la cantidad de huespedes de la reserva'.
tipoHab:= Prompter prompt: 'Ingrese el Tipo de la habitacion que desea reservar'.

"Se busca si hay alguna habitacion disponible"

hab := hotel buscarHabitacionDisponibleTipo: tipoHab.
(hab ~= nil) ifTrue: [Transcript  show: 'Hay una habitacion disponible en el hotel'.
nroHab := hab verNroHab.
res := Prompter prompt: 'Ingrese el numero de reserva'.
cl := cliente verNroCliente.

"Creo la reserva"

reserva := Reserva crearReservaIni: ini Fin: fin cantHuesp: cant numHab: nroHab nroRes: res nroCliente: cl.
reserva inspect.

Transcript show: 'Se registro la reserva correctamente' ]
ifFalse: [Transcript show: 'No hay ninguna habitacion disponible'; cr.
MessageBox warning: ' No hay ninguna habitacion disponible'.]
] ifFalse: [ Transcript show: 'El cliente no se encuentra registrado'; cr.
MessageBox warning: 'El cliente no se encuentra registrado'.]