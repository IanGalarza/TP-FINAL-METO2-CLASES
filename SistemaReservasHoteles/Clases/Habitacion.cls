"Filed out from Dolphin Smalltalk"!

Object subclass: #Habitacion
	instanceVariableNames: 'nroHab tipo estado precioPorNoche'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!

Habitacion guid: (GUID fromString: '{3a44cb7a-0b34-48b6-85ae-a0d9ea056c8b}')!

Habitacion comment: ''!

!Habitacion categoriesForClass!Kernel-Objects! !

!Habitacion methodsFor!

initHabitacionnro: unNum tipo:unTipo  precioPorNoche: unPrecioPorNoche
nroHab:=unNum.
tipo:=unTipo.
estado:= true.
precioPorNoche:=unPrecioPorNoche.
!

modiEstado:unEstado
estado:=unEstado.!

modinroHab:unNro
nroHab:=unNro.!

modiprecioPorNoche: unPrecioPorNoche
precioPorNoche:=unPrecioPorNoche.!

modiTipo:unTipo
tipo:=unTipo.!

verEstado
^estado.!

verNroHab
^nroHab.!

verPrecioPorNoche
^precioPorNoche.!

verTipo
^tipo.! !

!Habitacion categoriesForMethods!
initHabitacionnro:tipo:precioPorNoche:!public! !
modiEstado:!public! !
modinroHab:!public! !
modiprecioPorNoche:!public! !
modiTipo:!public! !
verEstado!public! !
verNroHab!public! !
verPrecioPorNoche!public! !
verTipo!public! !
!

!Habitacion class methodsFor!

crearHabitacionnro:unNum tipo:unTipo estado:unEstado precioPorNoche: unPrecioPorNoche
^(self new) initHabitacionnro:unNum tipo:unTipo estado:unEstado precioPorNoche: unPrecioPorNoche.! !

!Habitacion class categoriesForMethods!
crearHabitacionnro:tipo:estado:precioPorNoche:!public! !
!

