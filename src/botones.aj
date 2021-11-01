import java.io.File;

import javax.sound.sampled.AudioInputStream;
import javax.sound.sampled.AudioSystem;
import javax.sound.sampled.Clip;
import javax.sound.sampled.FloatControl;

import javax.swing.JPanel;
import javax.swing.JButton;
import java.awt.Color;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public aspect botones {
	
	pointcut agregandoBotones (JButton button): call( * JPanel.add(..) ) && args(button);
	
	after(JButton button) returning: agregandoBotones(button){
		
		String color = button.getText();
		
		button.addActionListener(new ActionListener() {
		    @Override
		    public void actionPerformed(ActionEvent evt) {
		    	
		    	switch(color) {
		    	
		    	case "Verde": {
		    		button.getParent().getParent().setBackground(Color.green);
		    		cargarSonido("sonidos\\boton1.wav");
		    	}
		    		break;
		    	case "Rojo": {
		    		button.getParent().getParent().setBackground(Color.red);
		    		cargarSonido("sonidos\\boton3.wav");
		    	}
	    			break;
		    	case "Azul": {
		    		button.getParent().getParent().setBackground(Color.blue);
		    		cargarSonido("sonidos\\boton2.wav");
		    	}
	    		
		    	}
		    	
		    	System.out.println(color);
		    }
		});
		
	}
	
	public void cargarSonido(String ruta) {
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
