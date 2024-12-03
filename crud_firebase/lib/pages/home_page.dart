import 'package:flutter/material.dart';

// Importaciones de servicio
import 'package:crud_firebase/services/firebase_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _incrementCounter() {
    // Lógica para incrementar o agregar nueva funcionalidad
    print('Botón presionado');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: getPeople(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text('Error: ${snapshot.error}'),
              );
            } else if (snapshot.hasData) {
              final data = snapshot.data as List<dynamic>;
              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data?[index]['name']),
                    onTap: (() {
                      Navigator.pushNamed(context, "/edit",
                          arguments: {"name": snapshot.data?[index]['name']});
                    }),
                  );
                },
              );
            } else {
              return const Center(
                child: Text('No hay datos disponibles'),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(context, '/add');
            setState(() {});
          },
          child: const Icon(Icons.add),
        ));
  }
}
