import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('INICIO SESIÓN', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF0D0D0D), Color(0xFF551100), Color(0xFF0D0D0D)],
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Icon(Icons.local_fire_department, size: 80, color: Colors.orange),
              const SizedBox(height: 40),
              // CAMPO CORREO
              _buildInput("Correo Electrónico", Icons.email_outlined),
              const SizedBox(height: 20),
              // CAMPO CONTRASEÑA
              _buildInput("Contraseña", Icons.lock_outline, isPassword: true),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[900],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                  onPressed: () {
                    const AlertDialog(title: Text("Bienvenido"));
                    ("Intentando ingresar...");
                  },
                  child: const Text("INGRESAR", style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                ),
              ),
              const SizedBox(height: 50),
              const Text("Francisco Santiago Carrasco Correa", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16)),
              const Text("Gpo: 6°i", style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(icon: const Icon(Icons.arrow_back, color: Colors.white70), onPressed: () => Navigator.pop(context)),
            const Icon(Icons.person, color: Colors.orange, size: 30),
            IconButton(icon: const Icon(Icons.home, color: Colors.white70), onPressed: () => Navigator.pushNamed(context, '/')),
          ],
        ),
      ),
    );
  }

  // FUNCIÓN CORREGIDA PARA QUE EL TEXTO SEA VISIBLE
  Widget _buildInput(String label, IconData icon, {bool isPassword = false}) {
    return TextField(
      obscureText: isPassword,
      cursorColor: Colors.orange, // Cursor siempre visible
      style: const TextStyle(color: Colors.white, fontSize: 16), // TEXTO BLANCO AL ESCRIBIR
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: Colors.orange),
        hintText: label,
        hintStyle: const TextStyle(color: Colors.white38),
        filled: true,
        fillColor: Colors.black45, // Fondo del campo un poco más claro que el fondo general
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.white12),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }
}