import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      appBar: AppBar(
        // FLECHITA PARA VOLVER AL INICIO (PAGINA 1)
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.orange),
          onPressed: () => Navigator.pushNamed(context, '/'),
        ),
        backgroundColor: Colors.black,
        title: const Text('MENU', style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, letterSpacing: 2)),
        actions: [
          TextButton(onPressed: () {}, child: const Text("SUCURSALES", style: TextStyle(color: Colors.white70, fontSize: 11))),
          TextButton(onPressed: () {}, child: const Text("PROMOS", style: TextStyle(color: Colors.white70, fontSize: 11))),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0, -0.5),
            radius: 1.2,
            colors: [Color(0xFF331100), Color(0xFF0D0D0D)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.8,
            children: [
              _itemMenu("CARNE POLLO", "180", "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?q=80&w=500"),
              _itemMenu("VEGANA", "150", "https://images.unsplash.com/photo-1512621776951-a57141f2eefd?q=80&w=500"),
              _itemMenu("ULTRA QUESO", "250", "https://images.unsplash.com/photo-1550547660-d9450f859349?q=80&w=500"),
              _itemMenu("GASEOSA", "25", "https://images.unsplash.com/photo-1622483767028-3f66f32aef97?q=80&w=500"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.white54,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          if (index == 2) Navigator.pushNamed(context, '/login');
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Carrito'),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }

  Widget _itemMenu(String nombre, String precio, String url) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF1A1A1A),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.orange),
      ),
      child: Column(
        children: [
          Expanded(child: ClipRRect(borderRadius: const BorderRadius.vertical(top: Radius.circular(20)), child: Image.network(url, fit: BoxFit.cover, width: double.infinity))),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Column(
              children: [
                Text(nombre, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                Text("\$$precio", style: const TextStyle(color: Colors.orange, fontSize: 16, fontWeight: FontWeight.w900)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}