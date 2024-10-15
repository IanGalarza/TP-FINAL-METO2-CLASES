"Filed out from Dolphin Smalltalk 7"!

Object subclass: #Factura
	instanceVariableNames: 'nroFactura montoTotal fechaEmision estadoPago nroReserva'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Factura guid: (GUID fromString: '{7E4CED10-5658-4EAF-9E4D-42A2C5A74E13}')!
Factura comment: ''!
!Factura categoriesForClass!Kernel-Objects! !
!Factura methodsFor!

CalcularMontoTotal
^ montoTotal.!

initFacturanroFactura:numeroF montoTotal:monto fechaEmision:fecha estadoPago:estado nroReserva:numeroR
nroFactura:=numeroF.
montoTotal:=monto.
fechaEmision:=fecha.
estadoPago:=estado.
nroReserva:=numeroR.!

verEstadoPago
^ estadoPago.! !
!Factura categoriesFor: #CalcularMontoTotal!public! !
!Factura categoriesFor: #initFacturanroFactura:montoTotal:fechaEmision:estadoPago:nroReserva:!public! !
!Factura categoriesFor: #verEstadoPago!public! !

!Factura class methodsFor!

crearFacturanroFactura:numeroF montoTotal:monto fechaEmision:fecha estadoPago:estado nroReserva:numeroR
^(self new) initFacturanroFactura:numeroF montoTotal:monto fechaEmision:fecha estadoPago:estado nroReserva:numeroR.! !
!Factura class categoriesFor: #crearFacturanroFactura:montoTotal:fechaEmision:estadoPago:nroReserva:!public! !

