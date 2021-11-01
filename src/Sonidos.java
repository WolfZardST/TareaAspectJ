import java.io.File;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.FloatControl;

public class Sonidos {
	public static void cargarSonido(String ruta) {
		try {
			AudioInputStream audio = AudioSystem.getAudioInputStream(new File(ruta).getAbsoluteFile());
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
