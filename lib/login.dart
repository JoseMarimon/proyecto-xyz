import 'package:flutter/material.dart';

void main() {
  runApp(AppPrincipal());
}

class AppPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext contexto) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Acceso XYZ',
      home: PantallaLogin(),
    );
  }
}

class PantallaLogin extends StatefulWidget {
  @override
  _EstadoPantallaLogin createState() => _EstadoPantallaLogin();
}

class _EstadoPantallaLogin extends State<PantallaLogin> {
  final TextEditingController controladorUsuario = TextEditingController();
  final TextEditingController controladorClave = TextEditingController();

  void autenticar() {
    String nombreUsuario = controladorUsuario.text;
    String clave = controladorClave.text;

    if (nombreUsuario == "admin" && clave == "1234") {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (contexto) => PantallaInicio(nombreUsuario: nombreUsuario)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Usuario o contraseña incorrectos")),
      );
    }
  }

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Iniciar Sesión", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            TextField(
              controller: controladorUsuario,
              decoration: InputDecoration(labelText: "Usuario"),
            ),
            TextField(
              controller: controladorClave,
              decoration: InputDecoration(labelText: "Contraseña"),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: autenticar,
              child: Text("Ingresar"),
            ),
          ],
        ),
      ),
    );
  }
}

class PantallaInicio extends StatelessWidget {
  final String nombreUsuario;

  PantallaInicio({required this.nombreUsuario});

  @override
  Widget build(BuildContext contexto) {
    return Scaffold(
      appBar: AppBar(title: Text("Bienvenido")),
      body: Center(
        child: Text("Usuario: $nombreUsuario", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
