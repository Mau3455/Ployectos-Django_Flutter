// ignore: avoid_web_libraries_in_flutter
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/pageStateless.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "EstrellaBlanca",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Cuerpo(),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Cuerpo() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/474x/d8/39/e9/d839e987540565f3ead60e2b5f17c100.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          campoUsuario(),
          campoCrontasena(),
          const SizedBox(
            height: 10,
          ),
          botnEntrar(context),
        ],
      ),
    ),
  );
}

Widget nombre() {
  return const Text("Sing in",
      style: TextStyle(
          color: Colors.white, fontSize: 35.0, fontWeight: FontWeight.bold));
}

Widget campoUsuario() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      decoration: InputDecoration(
        hintText: "User",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoCrontasena() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
    child: const TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

/*
Widget botnEntrar() {
  // ignore: deprecated_member_use
  return FlatButton(
      color: Colors.blueAccent,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      onPressed: () {},
      child: const Text(
        "Enter",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}





Widget botnEntrar() {
  // ignore: deprecated_member_use
  return Scaffold(
    body:Column(
      children: [
        // ignore: deprecated_member_use
        RaisedButton(
      //color: Colors.blueAccent,
      //padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      onPressed: () {
        Navigator.push(BuildContext context, MaterialPageRoute(builder: (context) => const PageStateles()));
      }, child: const Text( "Enter", style: TextStyle(fontSize: 25, color: Colors.white),),)
      ],
    ),
  );
}


*/

Widget botnEntrar(context) {
  // ignore: deprecated_member_use
  return RaisedButton(
      color: Colors.blueAccent,
      padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const PageStateles()));
      },
      child: const Text(
        "Enter",
        style: TextStyle(fontSize: 25, color: Colors.white),
      ));
}
