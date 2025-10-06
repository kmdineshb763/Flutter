import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPage()
  ));
}


class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      title: Text("Main Page"),
    ),
    body: MaterialButton(onPressed: (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context)=> SecondPage("Hello World","Welcome")));
    } , 
    color: Colors.blue,
    child: Text("Go to Second Page"),
    )
   );
  }
}

class SecondPage extends StatefulWidget{
  String label="";
  String valuetwo="";
  SecondPage(this.label , this.valuetwo);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.red,
      title: Text("Second Page"),
    ),
    body: Column(
      children: [
        Text(widget.label),
        Text(widget.valuetwo),
        MaterialButton(onPressed: (){
          Navigator.pop(context);
        } ,
        color: Colors.red,
        child: Text("Go Back (POP)"),
        )
      ],
    )
      );
  }
}