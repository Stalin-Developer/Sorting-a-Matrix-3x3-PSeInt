Proceso Ordenamiento_de_una_matriz_3x3_con_el_metodo_de_la_burbuja_mejorado
	Definir matriz, i, j, acu, x, elementos Como Entero;
	Definir ordenado Como Logico;
	Dimension matriz[3, 3];
	acu<- 0;
	x<- 0;
	elementos<- 0;
	ordenado<- Verdadero; //Asumamos que la matriz ya esta esta ordenada.Para que el algorítmo ->
	//ordenamiento tenga que demostrarme lo contrario. O sino que pase de largo.
	
	
	//Creación de la matriz.
	Escribir "Ingrese los 9 elementos de la matriz.";
	Para i<- 0 hasta 2 Hacer
		Para j<-0 hasta 2 Hacer
			elementos<- elementos + 1;
			Escribir "";
			Escribir "Ingrese el elemento ", elementos, " del vector: ";
			Leer matriz[i, j];
		FinPara
	FinPara
	
	
	
	
	//Impresión de la matriz.
	Escribir "";
	Escribir "Los elementos que ingresó son: ";
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Si j<2 Entonces
				Escribir matriz[i, j], ", "; sin saltar
				
			SiNo
				Escribir matriz[i, j];
			FinSi
		FinPara
	FinPara
	
	
	
	
	Repetir
		//Ordenamiento de la matriz con el método de la burbuja.
		ordenado<- Verdadero; //Es para que en cada proceso el algorítmo me tenga que desmostrar ->
		//que está desordenado. O sino se haría un bucle infinito.
		//Tengo que decir con la variable ordenado es verdadero antes del ciclo i, para que el algorítmo ->
		//me intente demostrar lo contrario usando toda la matriz no solo la segunda o tercera fila.
		Para i<-0 Hasta 2 Hacer
			
			Para j<-0 Hasta 1 Hacer
				si matriz[i, j] > matriz[i, j+1] Entonces //Comparo elementos de una misma fila.
					acu<- matriz[i, j];
					matriz[i, j]<- matriz[i, j+1];
					matriz[i, j+1]<- acu;
					ordenado<- falso; //El algorítmo me dice que me espere, que la matriz aún no está ordenada.
				FinSi
			FinPara
			Si i>=1 Entonces
				si matriz[i-1, 2] > matriz[i, 0] Entonces //Comparo el último elemento de la fila ->
					//anterior con el primer elemento de la fila actual.
					acu<- matriz[i-1, 2];
					matriz[i-1, 2]<- matriz[i, 0];
					matriz[i, 0]<- acu;
					ordenado<- falso; //El algorítmo me dice que me espere, que la matriz aún no está ordenada.
				FinSi
			FinSi
		FinPara
		x<-x+1; //Utilicé esta variable para comprobar la diferencia de optimización entre el método de burbuja ->
		//simple y el método de burbuja mejorado.
		
		
		Si x=6 Entonces //Con el método de la burbuja simple hemos podido apreciar que en la peor de las ->
			//situaciones que es en donde el elemento más pequeño de la matriz se encuentra en el último ->
			//lugar. Y el ciclo repetir nesecita de 6 repeticiones para que el elemento más pequeño, vaya ->
			//al primer lugar y que toda la matriz este ordenada. 
			//Este método de la burbuja mejorado si cumple con la cualidad de que en caso de que por ejemplo ->
			//en toda la matriz solo esten desordenados dos elementos consecutivos, con este método mejorado ->
			//el ciclo repetir solo hace dos repeticiones. En la peor de la situaciones en donde el elemento ->
			//más pequeño se encuentra en el último lugar, se demora igual que el método de la burbuja simple ->
			//pero en el último paso, este método al tener que comprobar si todos los elementos estan ordenados ->
			//hace que el ciclo repetir se ejecute una última vez más. Así que nosotros con esta regla como ya ->
			//hemos visto que con solo 6 repeticiones del ciclo repetir la matriz ya esta completamente ordenada ->
			//nos ahorramos el último paso haciendo que en la peor de las situaciones este método mejorado ->
			//sea igual de eficiente que el método de burbuja simple.
			ordenado<- Verdadero;
		FinSi
	Hasta Que ordenado=Verdadero  
	
	
	//Impresión de la matriz ordenada.
	Escribir "";
	Escribir "Y esta es la matriz ya ordenada:";
	Para i<-0 Hasta 2 Hacer
		Para j<-0 Hasta 2 Hacer
			Si j<2 Entonces
				Escribir matriz[i, j], ", "; sin saltar
				
			SiNo
				Escribir matriz[i, j];
			FinSi
		FinPara
	FinPara
	
	
	
	
FinProceso
