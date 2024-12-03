import 'package:crud_firebase/pages/home_page.dart';
import 'package:flutter/material.dart';

// Importaciones de Firebase
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

// Importaciones de servicio

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: Home(),
    );
  }
}
