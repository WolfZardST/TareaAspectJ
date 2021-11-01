import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;

public class Boton extends JFrame implements ActionListener {
	private static final long serialVersionUID = 1L;
	private JButton boton1,boton2,boton3;
	private JPanel fondo, botones;
	
	public Boton() {
		
		creacionVentana();

    }
	
	public void actionPerformed(ActionEvent e) {
        if (e.getSource()==boton1) {
        	accionBoton1(this);
        }
        if (e.getSource()==boton2) {
        	accionBoton2(this);
        }
        if (e.getSource()==boton3) {
        	accionBoton3(this);
        }        
    }
	
	private void creacionVentana() {
		
		fondo = new JPanel();
		fondo.setLayout(new BorderLayout());
		fondo.setBackground(Color.black);
		
		botones = new JPanel();
		botones.setLayout(new GridLayout(1,3));
		
		boton1 = new JButton("Verde");
		boton1.addActionListener(this);
		boton2 = new JButton("Azul");
		boton2.addActionListener(this);
		boton3 = new JButton("Rojo");
		boton3.addActionListener(this);
		
		botones.add(boton1); botones.add(boton2); botones.add(boton3);
		
		fondo.add(botones, BorderLayout.SOUTH);
		
		add(fondo);
		
	}
	
	public void accionBoton1(Boton b) {
		fondo.setBackground(Color.green);
		setTitle("boton 1");
	}
	
	public void accionBoton2(Boton b) {
		fondo.setBackground(Color.blue);
		setTitle("boton 2");
	}
	
	public void accionBoton3(Boton b) {
		fondo.setBackground(Color.red);
		setTitle("boton 3");
	}
}
