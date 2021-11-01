import javax.swing.JFrame;

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
