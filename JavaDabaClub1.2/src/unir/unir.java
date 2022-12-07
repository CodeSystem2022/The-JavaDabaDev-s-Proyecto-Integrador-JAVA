
package unir;

import java.util.Scanner;

public class unir {
        // Metodo unir: este metodo le pide datos al usuario para colocarlos posteriormente en una matriz
    public static String unir() {
        Scanner datos = new Scanner(System.in);
		String union;
		// Inicializamos variable union con una cadena vacía
		// Pide datos y los guarda en unas variables
		System.out.println("Por favor, ingrese los diguientes datos seguido de la tecla ENTER");
		System.out.println("");
		System.out.print("Nombre: ");
            String nombre = datos.nextLine();
		System.out.print("Apellido: ");
            String apellido = datos.nextLine();
		System.out.print("D.N.I: ");
            String dni = datos.nextLine();
		System.out.print("Dirección: ");
            String direccion = datos.nextLine();
		System.out.print("Mail: ");
            String mail = datos.nextLine();
		System.out.print("Teléfono: ");
            String telefono = datos.nextLine();
		// Concatena los datos solicitados anteriormente
		union = (nombre + " " + apellido + " | " + "DNI: " + dni + " | " + "DIRECCIÓN: " + direccion + " | " + "MAIL: " + mail + " | " + "TELÉFONO: " + telefono);
		return union;
    } // Metodo unir
}
