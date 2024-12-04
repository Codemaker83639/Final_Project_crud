import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});

  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
  TextEditingController nameController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Editar Nombre'),
        backgroundColor: const Color(0xFFFFF7E0), // Color crema claro
        foregroundColor: Colors.black, // Texto negro para contraste
      ),
      body: Stack(
        children: [
          // Imagen de fondo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/EditImage.jpg"), // Ruta de la imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenido principal
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Center(
              child: Card(
                color: Colors.white
                    .withOpacity(0.9), // Fondo blanco semitransparente
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          hintText: 'Modifica el nombre',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(
                              0xFFFFF7E0), // Botón color crema claro
                          foregroundColor: Colors.black, // Texto negro
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () async {
                          await updatepeople(
                                  arguments['uid'], nameController.text)
                              .then((_) {
                            Navigator.pop(context);
                          });
                        },
                        child: const Text("Actualizar"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
