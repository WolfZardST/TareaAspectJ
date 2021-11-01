import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.GridLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Boton extends JFrame{
	private JButton boton1,boton2,boton3;
	private JPanel fondo, botones;
	
	public Boton() {
		
		creacionVentana();
    }
	
	private void creacionVentana() {
		
		fondo = new JPanel();
		fondo.setLayout(new BorderLayout());
		fondo.setBackground(Color.black);
		
		botones = new JPanel();
		botones.setLayout(new GridLayout(1,3));
		
		boton1 = new JButton("Verde");
		boton2 = new JButton("Azul");
		boton3 = new JButton("Rojo");
		
		botones.add(boton1); botones.add(boton2); botones.add(boton3);
		
		fondo.add(botones, BorderLayout.SOUTH);
		
		add(fondo);
		
	}
	
}
