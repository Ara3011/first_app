
import 'package:fistapp/src/paginas/counter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{ //TODA LA CONFIGURACION DE LA APLICACION

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp( //Material es un widget
      home: CounterPage() //Home es una llave  y widget tipo   //Text align es para mover texto
    );
  }

}