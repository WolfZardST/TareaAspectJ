import java.io.File;

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
		    		Sonidos.cargarSonido("sonidos\\boton1.wav");
		    	}
		    		break;
		    	case "Rojo": {
		    		button.getParent().getParent().setBackground(Color.red);
		    		Sonidos.cargarSonido("sonidos\\boton3.wav");
		    	}
	    			break;
		    	case "Azul": {
		    		button.getParent().getParent().setBackground(Color.blue);
		    		Sonidos.cargarSonido("sonidos\\boton2.wav");
		    	}
	    		
		    	}
		    	
		    	System.out.println(color);
		    }
		});
		
	}
	

}
