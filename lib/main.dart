import 'package:clase_nube_app/contador_pantalla.dart';
import 'package:clase_nube_app/cuenta_pantalla.dart';
import 'package:clase_nube_app/firebase_options.dart';
import 'package:clase_nube_app/productos_pantalla.dart';
import 'package:clase_nube_app/token_pantalla.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  return runApp(const MaterialApp(home: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  void abrir(BuildContext context, Widget pantalla) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => pantalla));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Almacenamiento en nube')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Contador'),
            onTap: () => abrir(context, const ContadorPantalla()),
          ),
          ListTile(
            title: const Text('Token seguro'),
            onTap: () => abrir(context, const TokenPantalla()),
          ),
          ListTile(
            title: const Text('Productos'),
            onTap: () => abrir(context, const ProductosPantalla()),
          ),
          ListTile(
            title: const Text('Cuenta de usuario'),
            onTap: () => abrir(context, const CuentaPantalla()),
          ),
        ],
      ),
    );
  }
}
