import 'package:flutter/material.dart';

void main() {
  runApp(const BodegaDigitalApp());
}

class BodegaDigitalApp extends StatelessWidget {
  const BodegaDigitalApp({Key? key}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bodega Digital',
      theme: ThemeData(
        fontFamily: 'Roboto',  
      ),
      home: ProductoList(
        productos: [
          Producto(nombre: 'Azucar', precio: 4.0, imagen: 'assets/producto1.png'),
          Producto(nombre: 'Arroz', precio: 5.0, imagen: 'assets/producto2.png'),
        ],
      ),
    );
  }
}

class Producto {
  final String nombre;
  final double precio;
  final String imagen;

  Producto({
    required this.nombre,
    required this.precio,
    required this.imagen,
  });
}

class ProductoCard extends StatelessWidget {
  final Producto producto;

  const ProductoCard({Key? key, required this.producto}) : super(key: key);  

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(producto.imagen),
          Text(producto.nombre),
          Text('Precio: ${producto.precio.toStringAsFixed(2)}'),
        ],
      ),
    );
  }
}

class ProductoList extends StatelessWidget {
  final List<Producto> productos;

  const ProductoList({Key? key, required this.productos}) : super(key: key);  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Productos'),
      ),
      body: ListView.builder(
        itemCount: productos.length,
        itemBuilder: (context, index) {
          return ProductoCard(producto: productos[index]);
        },
      ),
    );
  }
}
