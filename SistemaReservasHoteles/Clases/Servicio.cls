"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Servicio
	instanceVariableNames: 'tipo costo'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Servicio guid: (GUID fromString: '{02a47aa4-7a90-4a12-80a0-ba023bbdca54}')!
Servicio comment: ''!
!Servicio categoriesForClass!Kernel-Objects! !
!Servicio methodsFor!

initServicioTipo:unTipo costo:unCosto
tipo:=unTipo.
costo:=unCosto.!

modiCosto:unCosto
costo:=unCosto.!

modiTipo:unTipo
tipo:=unTipo.!

verCosto
^costo.!

verTipo
^tipo.! !
!Servicio categoriesFor: #initServicioTipo:costo:!public! !
!Servicio categoriesFor: #modiCosto:!public! !
!Servicio categoriesFor: #modiTipo:!public! !
!Servicio categoriesFor: #verCosto!public! !
!Servicio categoriesFor: #verTipo!public! !

!Servicio class methodsFor!

createServicioTipo:unTipo costo:unCosto
^(self new)initServicioTipo: unTipo costo: unCosto.! !
!Servicio class categoriesFor: #createServicioTipo:costo:!public! !

