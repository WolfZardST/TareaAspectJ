import java.awt.Panel;
import java.awt.event.ActionListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;

public class Ventana {
	public static void main(String[] args) {
		
		Boton boton=new Boton();
        
		boton.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		boton.pack();
		
		boton.setSize(400, 300);
		boton.setLocationRelativeTo(null);
		
		boton.setResizable(false);
		
		boton.setVisible(true);
		boton.requestFocus();
        
    }

	
	
	
}