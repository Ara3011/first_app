import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget{

TextStyle textPersonal=TextStyle(
fontSize: 16,
  color: Color(0x50ff0000),
);

TextStyle textPersona=TextStyle(
  fontSize: 16,
  color: Color(0xf00ff000),
);


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(      //Scaffold es un widget
      appBar: AppBar(
        title: Center(child: Text ("Mi primer app",
      style: textPersona,
        )
        ),
      ),


      body: Center(child: Text("Contenido de mi aplicacion",
        style: textPersonal,
      )
      ),

    );
  }
}
