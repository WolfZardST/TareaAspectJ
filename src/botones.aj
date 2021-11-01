import java.io.File;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.FloatControl;

public aspect botones {
	
	pointcut pushButtons1(): 
		call(void accionBoton1(Boton)); 
	
	pointcut pushButtons2(): 
		call(void accionBoton2(Boton)); 
	
	pointcut pushButtons3(): 
		call(void accionBoton3(Boton)); 
	
	after() : pushButtons1() {
		System.out.println("boton verde");
		cargarSonido("sonidos\\boton1.wav");
	} 
	
	after() : pushButtons2() {
		System.out.println("boton azul");
		cargarSonido("sonidos\\boton2.wav");
	}
	
	after() : pushButtons3() {
		System.out.println("boton rojo");
		cargarSonido("sonidos\\boton3.wav");
	}
	
	
	public void cargarSonido(String x) {
		try {
			AudioInputStream audio = AudioSystem.getAudioInputStream(new File(x).getAbsoluteFile());
            Clip sonido = AudioSystem.getClip();
            sonido.open(audio);
            
            FloatControl gainControl = 
	        	    (FloatControl) sonido.getControl(FloatControl.Type.MASTER_GAIN);
	        	gainControl.setValue(-30.0f);
	        	
            sonido.start();
        } catch (Exception e) {
            System.out.println("" + e);
        }
	}
}
