import 'package:flutter/material.dart';

class Pagina1 extends StatelessWidget {
  const Pagina1({super.key});

  @override
  Widget build(BuildContext context) {
    // URL de una hamburguesa gigante y antojable (puedes cambiarla si tienes otra mejor)
    const String fondoHamburguesaUrl = "https://images.unsplash.com/photo-1594212699903-ec8a3eca50f5?q=80&w=1374&auto=format&fit=crop";

    return Scaffold(
      // Stack permite encimar elementos (Fondo + Texto)
      body: Stack(
        fit: StackFit.expand, // Ocupa toda la pantalla
        children: [
          // CAPA 1: IMAGEN DE FONDO GIGANTE
          Image.network(
            fondoHamburguesaUrl,
            fit: BoxFit.cover,
          ),
          // CAPA 2: FILTRO OSCURO PARA QUE RESALTE EL NEÓN
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.black,
                ],
              ),
            ),
          ),
          // CAPA 3: TEXTO NEÓN CLICABLE AL CENTRO
          Center(
            child: GestureDetector(
               onTap: () {
                // Al hacer clic en el texto, navega a la página 2 (Menú)
                Navigator.pushNamed(context, '/menu');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Efecto Neón Naranja/Rojo
                  Text(
                    "ALABURGER",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Arial', // Usa una fuente gruesa si puedes importarla
                      fontSize: 60,
                      fontWeight: FontWeight.w900,
                      color: Colors.white, // Color base de la letra
                      shadows: [
                        // Múltiples sombras para crear el efecto "Glow" de neón
                        Shadow(color: Colors.orangeAccent, blurRadius: 10, offset: Offset(0, 0)),
                        Shadow(color: Colors.deepOrange, blurRadius: 30, offset: Offset(0, 0)),
                        Shadow(color: Colors.redAccent, blurRadius: 60, offset: Offset(0, 0)),
                      ],
                    ),
                  ),
                  Text(
                    "AL CARBÓN",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 5,
                       shadows: [
                        Shadow(color: Colors.orangeAccent, blurRadius: 15, offset: Offset(0, 0)),
                        Shadow(color: Colors.deepOrange, blurRadius: 40, offset: Offset(0, 0)),
                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}