import 'package:flutter/material.dart';

class Examen extends StatefulWidget{

  @override
  _ActionPageState createState() => _ActionPageState();

}
class _ActionPageState extends State<Examen>{
  TextStyle _textStyle=TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,);
  int _counter=0;
  int _divisor=2;
  String _es_no="";
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(title: Text("Numeros Primos",style: _textStyle,),
        backgroundColor: Color(0xFFFF1744),

        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Contador",style: _textStyle,),
            Text("$_counter",style: _textStyle,),
            Text("$_es_no",style: _textStyle,)
          ],),
      ),
      floatingActionButton: _createButons(),
    );

  }
  Widget _createButons()
  {
    //ordenados en una sola fila
    return Row (
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 23.0,),
        FloatingActionButton.extended(
          label: Text("Mas",style: _textStyle,),
          icon: Icon(Icons.add,size: 10.0,),
          onPressed: _addCounter,
          backgroundColor: Colors.redAccent,
        ),

        Expanded(child: SizedBox(width: 1.0,),),
        FloatingActionButton.extended(
          label: Text("Menos",style: _textStyle,),
          icon: Icon(Icons.remove,size: 10.0,),
          onPressed: _removeCounter,
          backgroundColor: Colors.red,
        ),
        //FloatingActionButton(child: Icon(Icons.remove_circle,),onPressed: _removeCounter,),
        Expanded(child: SizedBox(width: 1.0,),),
        FloatingActionButton.extended(
          label: Text("Cero",style: _textStyle,),
          icon: Icon(Icons.exposure_zero,size: 10.0,),
          onPressed: _refreshCounter,
          backgroundColor: Colors.redAccent,
        ),
        //FloatingActionButton(child: Icon(Icons.exposure_zero),onPressed: _refreshCounter,)
      ],);
  }
  _addCounter()
  {
    setState(() {
      if(_counter==0)
      {
        _es_no="";
      }
      if(_numprimo(++_counter, _divisor))
      {
        _es_no = "Es Primo";
      }
      else
      {
        _es_no="No es Primo";
      }
    });

  }
  _removeCounter()
  {
    setState(() {

      if(_numprimo(--_counter, _divisor)) {
        if (_counter <= 0) {
          _counter = 0;
          _es_no = "";
        }
        else {
          _es_no = "Es Primo";
        }
      }
      else
      {
        _es_no="No es Primo";
      }


    });

  }
  _refreshCounter()
  {
    setState(() {
      _counter=0;
      print("$_counter");
      _es_no="";
    });

  }
  bool _numprimo(int num,int divisor)
  {
    if(num==1) {
      return false;
    }
    if(num/2<divisor)
    {
      return true;
    }
    else
    {
      if(num%divisor==0)
      {
        return false;

      }
      else
      {
        return _numprimo(num, divisor+1);
      }
    }
  }
}