
package pantalladeinicio;

import static animacionesDeCarga.animacionesDeCarga.animaciondecarga1;
import java.io.IOException;

public class pantalladeinicio {
    // Metodo pantalladeinicio
    public static void pantalladeinicio() throws InterruptedException, IOException {
        // El siguiente código escribe la animación del nombre del club con arte ASCII. Se esperan 90 milisegundos por linea para crear un efecto cascada
		System.out.println("              :::::::::::     :::     :::     :::     :::          :::::::::      :::     :::::::::      :::           ::::::::  :::        :::    ::: ::::::::: ");
		Thread.sleep(90);
		System.out.println("                  :+:       :+: :+:   :+:     :+:   :+: :+:        :+:    :+:   :+: :+:   :+:    :+:   :+: :+:        :+:    :+: :+:        :+:    :+: :+:    :+: ");
		Thread.sleep(90);
		System.out.println("                  +:+      +:+   +:+  +:+     +:+  +:+   +:+       +:+    +:+  +:+   +:+  +:+    +:+  +:+   +:+       +:+        +:+        +:+    +:+ +:+    +:+ ");
		Thread.sleep(90);
		System.out.println("                  +#+     +#++:++#++: +#+     +:+ +#++:++#++:      +#+    +:+ +#++:++#++: +#++:++#+  +#++:++#++:      +#+        +#+        +#+    +:+ +#++:++#+ ");
		Thread.sleep(90);
		System.out.println("                  +#+     +#+     +#+ +#+    +#+  +#+     +#+      +#+    +#+ +#+     +#+ +#+    +#+ +#+     +#+      +#+        +#+        +#+    +#+ +#+    +#+ ");
		Thread.sleep(90);
		System.out.println("              #+# #+#     #+#     #+#   #+#+#+#   #+#     #+#      #+#    #+# #+#     #+# #+#    #+# #+#     #+#      #+#    #+# #+#        #+#    #+# #+#    #+# ");
		Thread.sleep(90);
		System.out.println("               #####      ###     ###     ###     ###     ###      #########  ###     ### #########  ###     ###       ########  ##########  ########  ######### ");
		Thread.sleep(90);
		// Salto de linea
		System.out.println("");
		// Bienvenida
		System.out.println("                                                           Bienvenid@ al sistema de registro de socios del JavaDabaClub!");
		System.out.println("                                                                                 Complejo Deportivo");
		// Primera instrucción
		System.out.println("                                                                      Presiona La Tecla ENTER para CONTINUAR");
		System.in.read(); // a diferencia del pseudocódigo, espera un Enter, no cualquier tecla
		// Invoca a un SubPorceso de animación que simula un proceso de carga
		animaciondecarga1();
		System.out.println(""); // no hay forma directa de borrar la consola en Java por lo que se utiliza un print vacío
    } //Metodo pantalladeinicio
    
}
