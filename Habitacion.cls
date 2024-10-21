"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Habitacion
	instanceVariableNames: 'nroHab tipo estado precioPorNoche'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Habitacion guid: (GUID fromString: '{3A44CB7A-0B34-48B6-85AE-A0D9EA056C8B}')!
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
!Habitacion categoriesFor: #initHabitacionnro:tipo:precioPorNoche:!public! !
!Habitacion categoriesFor: #modiEstado:!public! !
!Habitacion categoriesFor: #modinroHab:!public! !
!Habitacion categoriesFor: #modiprecioPorNoche:!public! !
!Habitacion categoriesFor: #modiTipo:!public! !
!Habitacion categoriesFor: #verEstado!public! !
!Habitacion categoriesFor: #verNroHab!public! !
!Habitacion categoriesFor: #verPrecioPorNoche!public! !
!Habitacion categoriesFor: #verTipo!public! !

!Habitacion class methodsFor!

crearHabitacionnroHab:unNum tipo:unTipo precioPorNoche:unPrecioPorNoche
^(self new)initHabitacionnro: unNum tipo:unTipo  precioPorNoche: unPrecioPorNoche.! !
!Habitacion class categoriesFor: #crearHabitacionnroHab:tipo:precioPorNoche:!public! !

