import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> { 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: cuerpo(), 
    );
  }
}

Widget cuerpo(){
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/2437299/pexels-photo-2437299.jpeg?auto=compress&cs=tinysrgb&w=400"),
      fit: BoxFit.cover
      )
      ),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/logo.png',
          height: 120,),
          nombre(),
          campoUsuario(),
          campoContrasenia(),
          SizedBox(height: 10,),
          botonEntrar()
        ]
      )
      ),  
  );
}

Widget nombre(){
  return Text("Firestorm", style: TextStyle(color: Colors.white, fontSize: 35.0, fontWeight:FontWeight.bold),);
}

Widget campoUsuario(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3 ),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Usuario",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget campoContrasenia(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 3 ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Contraseña",
        fillColor: Colors.white,
        filled: true,
      ),
    ),
  );
}

Widget botonEntrar(){
  return FlatButton(
    color: Color.fromARGB(255, 217, 112, 147),
    padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10 ),
    onPressed: (){},
    child: Text("Ingresar",style: TextStyle(fontSize: 25, color: Colors.white),),
  );
}


