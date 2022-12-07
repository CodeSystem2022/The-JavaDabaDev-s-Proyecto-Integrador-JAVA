SubProceso  union <-unir(concat Por Referencia)
	Definir union, nombre, apellido , dni, direccion, mail, telefono Como Caracter;
	//Inicializamos variable union con una cadena vac�a
	union <- "";
	//Pide datos y los guarda en unas variables
	Escribir "Por favor, ingrese los diguientes datos seguido de la tecla ENTER";
	Escribir "";
	Escribir sin saltar "Nombre: ";
	Leer nombre;
	Escribir sin saltar "Apellido: ";
	Leer apellido;
	Escribir sin saltar "D.N.I: ";
	Leer dni;
	Escribir sin saltar "Direcci�n: ";
	Leer direccion;
	Escribir sin saltar "Mail: ";
	Leer mail;
	Escribir sin saltar "Tel�fono: ";
	Leer telefono;
	//Concatena los datos solicitados anteriormente
	union <- Concatenar(nombre,Concatenar(" ",Concatenar(apellido,Concatenar(" // DNI: ",Concatenar(dni,concatenar(" // DIRECCI�N: ",concatenar(direccion,concatenar(" // MAIL: ",concatenar(mail,concatenar(" // TEL�FONO: ",concatenar(telefono,"")))))))))));
FinSubProceso

SubProceso buscarPorSocio(registro, n) //SubProceso de busqueda
	Definir i, long como entero;
	Definir socio Como Caracter;
	Definir encontrado como logico;

	Escribir "Digite el nombre del socio que desea buscar: ";
	Leer socio; // Se le pide al usuario que ingrese en la variable socio el nombre que quiere buscar
	long <- Longitud(socio); // En la variable long se guarda la longitud de lo ingresado por el usuario
	encontrado <- falso;
	i <- 0;
	
	Mientras (i<n y encontrado=falso) Hacer
		Si (Subcadena(registro[i],0,long-1))=socio Entonces // Si la subcadena almacenada en la matriz, 
			// desde la primera letra, hasta la longitud de lo que contiene la palabra socio -1, es igual a socio entonces
			encontrado <- verdadero;
		FinSi
		i <- i + 1;
	FinMientras
	Borrar Pantalla;
	Escribir "";
	animacionDeCarga2;
	Borrar Pantalla;
	Si encontrado=Verdadero Entonces
		Escribir "El socio ha sido encontrado: ";
		Escribir "";
		Escribir "[",i,"] ", registro[i-1];
	SiNo
		Escribir "El socio no ha sido encontrado";
	FinSi
	
FinSubProceso
SubProceso pantallaDeInicio // No retorna ning�n valor
	// El siguiente c�digo escribe la animaci�n del nombre del club con arte ASCII. Se esperan 90 milisegundos por linea para crear un efecto cascada
	Escribir '              :::::::::::     :::     :::     :::     :::          :::::::::      :::     :::::::::      :::           ::::::::  :::        :::    ::: ::::::::: ';
	Esperar 90 Milisegundos;
	Escribir '                  :+:       :+: :+:   :+:     :+:   :+: :+:        :+:    :+:   :+: :+:   :+:    :+:   :+: :+:        :+:    :+: :+:        :+:    :+: :+:    :+: ';
	Esperar 90 Milisegundos;
	Escribir '                  +:+      +:+   +:+  +:+     +:+  +:+   +:+       +:+    +:+  +:+   +:+  +:+    +:+  +:+   +:+       +:+        +:+        +:+    +:+ +:+    +:+ ';
	Esperar 90 Milisegundos;
	Escribir '                  +#+     +#++:++#++: +#+     +:+ +#++:++#++:      +#+    +:+ +#++:++#++: +#++:++#+  +#++:++#++:      +#+        +#+        +#+    +:+ +#++:++#+ ';
	Esperar 90 Milisegundos;
	Escribir '                  +#+     +#+     +#+ +#+    +#+  +#+     +#+      +#+    +#+ +#+     +#+ +#+    +#+ +#+     +#+      +#+        +#+        +#+    +#+ +#+    +#+ ';
	Esperar 90 Milisegundos;
	Escribir '              #+# #+#     #+#     #+#   #+#+#+#   #+#     #+#      #+#    #+# #+#     #+# #+#    #+# #+#     #+#      #+#    #+# #+#        #+#    #+# #+#    #+# ';
	Esperar 90 Milisegundos;
	Escribir '               #####      ###     ###     ###     ###     ###      #########  ###     ### #########  ###     ###       ########  ##########  ########  ######### ';
	Esperar 90 Milisegundos;
	Escribir ''; // Salto de linea
	Escribir '                                                           Bienvenid@ al sistema de registro de socios del JavaDabaClub!'; // Bienvenida
	Escribir '                                                                                 Complejo Deportivo';
	Escribir '                                                                      Presiona Cualquier Tecla para CONTINUAR'; // Primera instrucci�n
	Esperar Tecla;             
    animacionDeCarga1; //Invoca a un SubPorceso de animaci�n que simula un proceso de carga
	Borrar Pantalla;
FinSubProceso

SubProceso animacionDeCarga1 // No retorna ning�n valor
	// ******Animacion de carga JavaDabaClub
	Escribir 'Ingresando al sistema';
	Definir contador,i Como Entero;
	Definir club Como Caracter;
	i <- 0;
	club <- '...JAVA DABA CLUB...';
	contador <- 0;
	// Mientras contador sea menor a la longitud de lo que se encuentra en la variable club
	Mientras contador < Longitud(club) Hacer
		// Escribe sin saltar un caracter a la vez
		Escribir subcadena(club,i,i) Sin Saltar;
		Esperar azar(200) Milisegundos; // Espera una cantidad azarosa de milisegundos entre caracter y caracter para dar un efecto de carga (rango de 200 milisegundo)
		contador <- contador+1; // Suma 1 paso para que el algoritmo termine cuando contador sea = a la longitud de lo que se ha escrito en la variable club
		i <- i+1; // Le suma 1 a la variable i para escribir la siguien letra.
	FinMientras
	// ******Animacion de carga JavaDabaClub
FinSubProceso

SubProceso animacionDeCarga2 // No retorna ning�n valor
	// ******Animacion de carga JavaDabaClub
	Definir contador,i Como Entero;
	Definir club Como Caracter;
	i <- 0;
	club <- '...BUSCANDO SOCIO...';
	contador <- 0;
	// Mientras contador sea menor a la longitud de lo que se encuentra en la variable club
	Mientras contador < Longitud(club) Hacer
		// Escribe sin saltar un caracter a la vez
		Escribir subcadena(club,i,i) Sin Saltar;
		Esperar azar(200) Milisegundos; // Espera una cantidad azarosa de milisegundos entre caracter y caracter para dar un efecto de carga (rango de 200 milisegundo)
		contador <- contador+1; // Suma 1 paso para que el algoritmo termine cuando contador sea = a la longitud de lo que se ha escrito en la variable club
		i <- i+1; // Le suma 1 a la variable i para escribir la siguien letra.
	FinMientras
	// ******Animacion de carga JavaDabaClub
FinSubProceso

SubProceso informacion // No retorna ning�n valor
	Borrar Pantalla;
	Escribir "                                 El JavaDabaClub es un complejo de canchas de futbol, padel y basquet, habilitadas no solo para el deporte profesional,";
	Escribir "";
	Escribir "                      si no tambi�n para el p�blico en general. Nuestras canchas est�n en optimas condiciones de mantenimiento, siempre preparadas para la acci�n.";
	Escribir "";
	Escribir "                                 En este gran complejo se encuentra un buffet con una gran variedad de opciones, tanto saludables como comidas r�pidas.";
	Escribir "";
	Escribir "                          Por otro lado tambi�n se puede visitar nuestra tienda, en la que se encontrar� la mejor indumentaria, calzado y art�culos de deporte";
	Escribir "";
	Escribir "                                                                  originales y con los mayores est�ndares de calidad!";
	Escribir "";	
	Escribir "                       JavaDabaClub! Es posible gracias a sus fundadores:  MARITA - JOHANA - CAROLINA - BEL�N - SOF�A - ARACELI - DAVID - MARCELO - CIRO - AUGUSTO";
	Escribir "";
	Escribir "";
	Escribir "                                                                   Presiona una tecla para volver al Men� del Cliente";
	Esperar Tecla;
	Borrar Pantalla;
FinSubProceso

//*********PROCESO PRINCIPAL***********
Proceso Proyecto
	//Definici�n de variables y matrices
	Definir i, opcion, n, reemplazar Como Entero;
	Definir  registro Como Caracter;
	Dimension registro[1000];
	//Iniciamos variables n y opci�n en 0, veremos m�s adelante para que
	n<-0;
	opcion <- 0;
	//Muestra una bienvenida y pide que se maximice la ventana con el objetivo de apreciar mejor la visual
	Escribir "Hola! MAXIMIZA esta ventana antes de iniciar el programa";
	Esperar Tecla;
	Borrar Pantalla;
	pantallaDeInicio;
	//Comienza un ciclo repetitivo mientras
	Mientras opcion < 8 Hacer
		Esperar 1 Segundos;
		//Se escriben las opciones disponibles
		Escribir "*********************************";
		Escribir "* M E N �  D E  O P C I O N E S *";
		Escribir "*********************************";
		Escribir "";
		Escribir "1 - Registrar Socio";
		Escribir "2 - Mostrar registros";
		Escribir "3 - Borrar Registro";
		Escribir "4 - Sobreescribir Registro";
		Escribir "5 - Buscar por nombre de Socio";
		Escribir "6 - �Quienes Somos?";
		Escribir "7 - Limpiar pantalla";
		Escribir "8 - Salir";
		Escribir " ";
		//Lee la variable opci�n para que el usuario elija la que m�s le convenga
		Leer opcion;
		//Seg�n el valor de la variable opci�n es que se ejecuta uno de los siguientes casos
		Segun opcion Hacer
			1:  //M�dulo de registro
				//Borra la pantalla
				Borrar Pantalla;
				//La siguiente iteraci�n invoca el SubAlgoritmo "unir" y coloca una concatenaci�n de datos en un espacio de la matriz registro
				para i<-n Hasta n Hacer
					registro[i]<-unir(concat);
					i<-i+1;
					n<-n+1;
				FinPara
				Borrar Pantalla;
				Escribir "***********************************************************";
				Escribir "Registro exitoso!!!. El n�mero de registro es ","[",i-1,"]";
			2: 	Borrar Pantalla;
				para i<-0 Hasta n-1 Hacer
					Escribir "[",i+1,"] ",registro[i];
				FinPara
			3: Escribir "Por favor, ingrese el n�mero de registro que desea eliminar";
				Definir delete Como Entero;
				Leer delete;
				delete <- delete -1;
				Para delete <- delete Hasta delete Hacer
					registro[delete] <- "";
				FinPara
				Borrar Pantalla;
				Escribir "***********************************************************";
				Escribir "Registro eliminado con �xito!!!";
			4: 	Escribir "Por favor, ingrese el n�mero de registro que desea reemplazar";
				leer reemplazar;
				Borrar Pantalla;
				reemplazar <- reemplazar -1;
				para reemplazar<-reemplazar Hasta reemplazar Hacer
					registro[reemplazar]<-unir(concat);
				FinPara
				Borrar Pantalla;
				Escribir "***********************************************************";
				Escribir "Regitro [", reemplazar,"] sobreescrito con �xito!!!";
			5: 	buscarPorSocio(registro, n);
			6: informacion;
			7:  Borrar Pantalla;
			8:
		FinSegun
	FinMientras
FinProceso