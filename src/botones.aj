public aspect botones {
	
	pointcut pushButtons1(): 
		call(void accionBoton1(Boton)); 
	
	pointcut pushButtons2(): 
		call(void accionBoton2(Boton)); 
	
	pointcut pushButtons3(): 
		call(void accionBoton3(Boton)); 
	
	after() : pushButtons1() {
		System.out.println("boton verde");
	} 
	
	after() : pushButtons2() {
		System.out.println("boton azul");
	}
	
	after() : pushButtons3() {
		System.out.println("boton rojo");
	}
	
}
