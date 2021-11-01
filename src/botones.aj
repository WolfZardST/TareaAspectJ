
public aspect botones {
	
	pointcut pushButtons(): 
		call(void accionBoton1(Boton)); 
	
	after() : pushButtons() {
		System.out.println("boton pulsao");
	} 
}
