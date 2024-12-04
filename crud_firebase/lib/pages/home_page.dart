import 'package:flutter/material.dart';

// Importaciones de servicio
import 'package:crud_firebase/services/firebase_service.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage("assets/ImageSunset.jpg"), // Ruta de la imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenido principal
          FutureBuilder(
            future: getPeople(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: const EdgeInsets.all(16),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        'Error: ${snapshot.error}',
                        style: const TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                );
              } else if (snapshot.hasData) {
                final data = snapshot.data as List<dynamic>;
                return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Dismissible(
                      onDismissed: (direction) async {
                        await deletepeople(snapshot.data?[index]['uid']);
                      },
                      confirmDismiss: (direction) async {
                        bool result = false;
                        result = await showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text(
                                  '¿Estás seguro de eliminar a ${snapshot.data?[index]['name']}?'),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, false);
                                  },
                                  child: const Text(
                                    "Cancelar",
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    return Navigator.pop(context, true);
                                  },
                                  child: const Text("Si, estoy seguro"),
                                ),
                              ],
                            );
                          },
                        );
                        return result;
                      },
                      background: Container(
                        color: const Color.fromARGB(255, 167, 21, 10),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      direction: DismissDirection.startToEnd,
                      key: Key(snapshot.data?[index]['uid']),
                      child: Card(
                        color: Colors.white.withOpacity(0.9),
                        margin: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 16),
                        child: ListTile(
                          title: Text(snapshot.data?[index]['name']),
                          onTap: () async {
                            await Navigator.pushNamed(context, "/edit",
                                arguments: {
                                  "name": snapshot.data?[index]['name'],
                                  "uid": snapshot.data?[index]['uid']
                                });
                            setState(() {});
                          },
                        ),
                      ),
                    );
                  },
                );
              } else {
                return const Center(
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(16),
                    child: Padding(
                      padding: EdgeInsets.all(16),
                      child: Text(
                        'No hay datos disponibles',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                );
              }
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, '/add');
          setState(() {});
        },
        backgroundColor: const Color(0xFFFFF8E1), // Color crema claro
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16), // Bordes suaves
        ),
        child: const Icon(
          Icons.note_add, // Icono más amigable
          color: Colors.black, // Contraste con el fondo
          size: 30, // Tamaño del icono
        ),
      ),
    );
  }
}
