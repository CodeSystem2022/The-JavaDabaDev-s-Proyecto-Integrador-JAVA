
package ProcesoPrincipal;
import static Buscador.Buscador.buscarporsocio;
import static Informacion.Informacion.informacion;
import java.awt.AWTException;
import java.io.*;
import java.util.Scanner;
import static pantalladeinicio.pantalladeinicio.pantalladeinicio;
import static unir.unir.unir;
public class ProcesoPrincipal {
    public static void main(String[] args) throws IOException, InterruptedException, AWTException {
        
        int opcion = 0, n = 0, reemplazar = 0, i = 0, delete = 0;
        
        Scanner eleccion = new Scanner(System.in);
        
        String[] registro = new String[100];
        
        System.out.println("Hola, por favor, maximiza esta ventana y presiona ENTER");
         int read = System.in.read();
         pantalladeinicio();
        
       while (opcion < 8) {
			// Se escriben las opciones disponibles
			System.out.println("*********************************");
			System.out.println("* M E N Ú  D E  O P C I O N E S *");
			System.out.println("*********************************");
			System.out.println("");
			System.out.println("1 - Registrar Socio");
			System.out.println("2 - Mostrar registros");
			System.out.println("3 - Borrar Registro");
			System.out.println("4 - Sobreescribir Registro");
			System.out.println("5 - Buscar por nombre de Socio");
			System.out.println("6 - ¿Quienes Somos?");
			System.out.println("7 - Salir");
			System.out.println(" ");
			// Lee la variable opción para que el usuario elija la que más le convenga
			opcion = eleccion.nextInt();
			// Según el valor de la variable opción es que se ejecuta uno de los siguientes casos
			switch (opcion) {
			case 1:
				// Borra la pantalla
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				// La siguiente iteración invoca el SubAlgoritmo "unir" y coloca una concatenación de datos en un espacio de la matriz registro
				for (i=n;i<=n;i++) {
					registro[i] = unir();
					i = i+1;
					n = n+1;
				}
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				System.out.println("***********************************************************");
				System.out.println("Registro exitoso!!!. El número de registro es " + "[" + (i-1) + "]");
				break;
			case 2:
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				for (i=0;i<=n-1;i++) {
					System.out.println("["+(i+1)+"] "+registro[i]);
				}
				break;
			case 3:
				System.out.println("Por favor, ingrese el número de registro que desea eliminar");
				delete = eleccion.nextInt();
				delete = delete-1;
				for (delete = delete;delete <= delete;delete++) {
					registro[delete] = "";
                                        break;
				}
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				System.out.println("***********************************************************");
				System.out.println("Registro eliminado con éxito!!!");
				break;
			case 4:
				System.out.println("Por favor, ingrese el número de registro que desea reemplazar");
				reemplazar = eleccion.nextInt();
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				reemplazar = reemplazar-1;
				for (reemplazar=reemplazar;reemplazar<=reemplazar;reemplazar++) {
					registro[reemplazar] = unir();
                                        break;
				}
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				System.out.println("***********************************************************");
				System.out.println("Regitro ["+reemplazar+"] sobreescrito con éxito!!!");
				break;
			case 5:
				buscarporsocio(registro,n);
				break;
			case 6:
				informacion();
				break;
			case 7:
                            
			}         
} // While
    } //Metodo main
} //Clase ProcesoPrincipal