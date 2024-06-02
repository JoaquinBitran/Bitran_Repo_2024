import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  final List<String> frutas = ['Manzana', 'Pera', 'Durazno', 'Uva', 'Tomate', 'Anana', 'Banana', 'Ciruela', 'Sandia', 'Frutilla'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Frutas'),
      ),
      body: ListView.builder(
        itemCount: frutas.length,
        itemBuilder: (context, index) {
          return Column(
            children: <Widget>[
              ListTile(
                title: Text(frutas[index]),
                onTap: () {
                 
                },
              ),
              Divider(thickness: 3, color: Color.fromARGB(255, 81, 172, 70)),
            ],
          );
        },
      ),
    );
  }
}
