

import 'package:flutter/material.dart';
class ActionPage extends StatefulWidget{
  @override
  _ActionPageState createState() => _ActionPageState();
}

class _ActionPageState extends State<ActionPage>{
  TextStyle _textStyle=TextStyle(fontSize: 20.0);
  int _counter=0;
  int _factorial=1;
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mi contador!!"),
      centerTitle:  true,),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center ,children: <Widget>[
          Text("Factorial:"),
          Text("$_factorial"),
          Text("Contador:",style: _textStyle,),
          Text("$_counter",style: _textStyle)
        ],),
      ),

        floatingActionButton: _createButtons(),
    );
  }

  Widget _createButtons(){
    return Row(mainAxisAlignment: MainAxisAlignment.end ,children: <Widget>[
      SizedBox(width: 40.0,),
      FloatingActionButton(child:Icon(Icons.add),onPressed: _addCounter,),
      Expanded(child: SizedBox(width: 30.0,)),
      FloatingActionButton(child:Icon(Icons.remove),onPressed: _removeCounter),
      Expanded(child: SizedBox(width: 20.0,)),
      FloatingActionButton(child:Icon(Icons.exposure_zero),onPressed:_ceroCounter),
      Expanded(child: SizedBox(width: 30.0,)),
    ],);
  }
  //Agregar datos al contador


  _ceroCounter(){
    setState(() {
    });
    _counter=0;
    print("$_counter");
    _factorial=1;
    print("$_factorial");
  }

  _addCounter(){
    setState(() {
      _counter++;
      _factorial = _calculateFactorial(_counter);
      //print("$_counter");
    });
  }

  _removeCounter(){
    if(_counter>0)
    setState(()=>_factorial=_calculateFactorial(--_counter));
  }

  int _calculateFactorial(int num)=>num==0?1:num*_calculateFactorial(num-1);


  //OTYRO MANERA DE HACER EL FACTORIAL RECURSIVIDAD
  int _calculo(int num){

    if(num==0)
      return 1;
    else
      num=num*_calculo(num-1);
    return num;
  }

//Aqui va la opcion de numero primo y no primo



}