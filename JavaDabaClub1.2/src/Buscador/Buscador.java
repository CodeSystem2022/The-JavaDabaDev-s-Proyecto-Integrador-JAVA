
package Buscador;

import static animacionesDeCarga.animacionesDeCarga.animaciondecarga2;
import java.util.Scanner;

public class Buscador {
        // Metodo buscarporsocio
    public static void buscarporsocio(String[] registro, int n) throws InterruptedException {
                Scanner datos = new Scanner(System.in);
		boolean encontrado;
		int i;
		int longitud;
		String socio;
		System.out.println("Digite el nombre del socio que desea buscar: ");
		// Se le pide al usuario que ingrese en la variable socio el nombre que quiere buscar
		socio = datos.nextLine();
		// En la variable longitud se guarda la longitud de lo ingresado por el usuario
		longitud = socio.length();
		encontrado = false;
		i = 0;
		while ((i<n && encontrado==false)) {
			// Si la subcadena almacenada en la matriz, 
			if ((registro[i].substring(0,longitud)).equals(socio)) {
				// desde la primera letra, hasta la longitud de lo que contiene la palabra socio -1, es igual a socio entonces
				encontrado = true;
			}
			i = i+1;
		}
		System.out.println("");
		System.out.println("");
		animaciondecarga2();
		System.out.println("");
		if (encontrado==true) {
			System.out.println("El socio ha sido encontrado: ");
			System.out.println("");
			System.out.println("["+i+"] "+registro[i-1]);
		} else {
			System.out.println("El socio no ha sido encontrado");
		}
    } // Metodo buscarporsocio

}
