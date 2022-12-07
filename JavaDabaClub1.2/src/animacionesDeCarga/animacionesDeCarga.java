
package animacionesDeCarga;

public class animacionesDeCarga {
        public static void animaciondecarga1() throws InterruptedException {
        String club;
		int contador;
		int i;
		// ******Animacion de carga JavaDabaClub
		System.out.println("Ingresando al sistema");
		i = 0;
		club = "...JAVA DABA CLUB...";
		contador = 0;
		// Mientras contador sea menor a la longitud de lo que se encuentra en la variable club
		while (contador<club.length()) {
			// Escribe sin saltar un caracter a la vez
			System.out.print(club.substring(i,i+1));
			// Espera una cantidad azarosa de milisegundos entre caracter y caracter para dar un efecto de carga (rango de 200 milisegundo)
			Thread.sleep((long)(Math.floor(Math.random()*200)));
			// Suma 1 paso para que el algoritmo termine cuando contador sea = a la longitud de lo que se ha escrito en la variable club
			contador = contador+1;
			// Le suma 1 a la variable i para escribir la siguien letra.
			i = i+1;
		}
    }
    // metodo de animacion de carga
    public static void animaciondecarga2() throws InterruptedException {
        String club;
		int contador;
		int i;
		// ******Animacion de carga JavaDabaClub
		i = 0;
		club = "...BUSCANDO SOCIO...";
		contador = 0;
		// Mientras contador sea menor a la longitud de lo que se encuentra en la variable club
		while (contador<club.length()) {
			// Escribe sin saltar un caracter a la vez
			System.out.print(club.substring(i,i+1));
			// Espera una cantidad azarosa de milisegundos entre caracter y caracter para dar un efecto de carga (rango de 200 milisegundo)
			Thread.sleep((long)(Math.floor(Math.random()*200)));
			// Suma 1 paso para que el algoritmo termine cuando contador sea = a la longitud de lo que se ha escrito en la variable club
			contador = contador+1;
			// Le suma 1 a la variable i para escribir la siguien letra.
			i = i+1;
		}
    }
}
