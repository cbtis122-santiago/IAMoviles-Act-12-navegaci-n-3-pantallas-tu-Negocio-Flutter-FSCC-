import 'package:flutter/material.dart';
import 'pagina1.dart';
import 'pagina2.dart';
import 'pagina3.dart';

void main() {
  runApp(const AlaburgerApp());
}

class AlaburgerApp extends StatelessWidget {
  const AlaburgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alaburger al Carbón',
      // Configuración de Rutas Nombradas
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/menu': (context) => const Pagina2(),
        '/login': (context) => const Pagina3(),
      },
    );
  }
}