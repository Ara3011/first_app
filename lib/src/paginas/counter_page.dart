import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatelessWidget{

final TextStyle textPersonal=TextStyle(
fontSize: 16,
  color: Color(0x50ff0000),
);

TextStyle textPersona=TextStyle(
  fontSize: 16,
  color: Color(0xf00ff000),
);

int _count=0;
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


      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Hola",style: textPersona,),
            Text("Si como no",style:textPersonal),
            Text("ORALE",style: TextStyle(color: Color(0xffffd54f),
            fontSize: 23.0),),
            Text("Contador: $_count",style: textPersonal,),
            RaisedButton(
              child: Text("Si como no"),
              onPressed: (){print("Me has presionado mucho");
              },//()datos del evento{}acciones
            ),
          ],
        ),
      ),
floatingActionButton: Stack(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(left: 31),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                onPressed: (){
                  _count++;
                  print(_count);
                },
                child: Icon(Icons.add),),
            ),),

          Align(
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
              onPressed: (){
                _count--;
                print(_count);
              },
              child: Icon(Icons.remove_circle),),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FloatingActionButton(
              onPressed: (){
                _count=0;
                print(_count);
              },
              child: Text("0"),),
          ),
        ],
      ),
    );
  }
}
