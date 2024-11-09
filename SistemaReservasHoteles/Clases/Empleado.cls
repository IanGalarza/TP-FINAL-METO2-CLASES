"Filed out from Dolphin Smalltalk 7"!

Persona subclass: #Empleado
	instanceVariableNames: 'salario antiguedad'
	classVariableNames: ''
	poolDictionaries: ''
	classInstanceVariableNames: ''!
Empleado guid: (GUID fromString: '{ddd16055-9580-4308-a91f-f6d8b4dca4e0}')!
Empleado comment: ''!
!Empleado categoriesForClass!Kernel-Objects! !
!Empleado methodsFor!

initEmpleadoSalario:unSalario antiguedad:suAntiguedad nombre:unNombre apellido:unApellido
super initPersonaNombre: unNombre apellido: unApellido.
salario:=unSalario.
antiguedad:=suAntiguedad.!

modiAntiguedad:suAntiguedad
antiguedad:=suAntiguedad.!

verAntiguedad
^antiguedad.!

verSalario
^salario.! !
!Empleado categoriesFor: #initEmpleadoSalario:antiguedad:nombre:apellido:!public! !
!Empleado categoriesFor: #modiAntiguedad:!public! !
!Empleado categoriesFor: #verAntiguedad!public! !
!Empleado categoriesFor: #verSalario!public! !

!Empleado class methodsFor!

crearEmpleadoNombre: unNombre apellido: unApellido salario:unSalario antiguedad:suAntiguedad
^(self new) initEmpleadoSalario: unSalario antiguedad: suAntiguedad nombre: unNombre apellido: unApellido.! !
!Empleado class categoriesFor: #crearEmpleadoNombre:apellido:salario:antiguedad:!public! !

