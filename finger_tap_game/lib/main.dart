import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MainPage(),
  ));
}

class MainPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Column(
      children: [
        Container(
          color: Colors.blue,
          height: MediaQuery.of(context).size.height/2,
          width: double.infinity,
          child: Center(
          child: MaterialButton(
            color: Colors.white,
            shape: CircleBorder(),
            height: 100,
            minWidth: 100,
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
            },
          child: Text("Start"),
          ),
        ),
        ),
        Container(
          color: Colors.red,
          height:  MediaQuery.of(context).size.height/2,
          width: double.infinity,
          child: Center(
          child: MaterialButton(
            color: Colors.white,
            shape: CircleBorder(),
            height: 100,
            minWidth: 100,
            onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>GamePage()));
            },
          child: Text("Start"),
          ),
        ),)
      ],
    ),
   );
  }
}

class GamePage extends StatefulWidget{
  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  double blueCardHeight=0;
  double RedCardHeight=0;
  int playerAscore=0;
  int playerBscore=0;
  bool initialized=false;
  @override
  Widget build(BuildContext context) {
   if(initialized==false){
     blueCardHeight=MediaQuery.of(context).size.height/2;
    RedCardHeight=MediaQuery.of(context).size.height/2;
    initialized=true;
   }
   return Scaffold(
    body: Column(
      children: [
        MaterialButton(
          onPressed: () {
            print(blueCardHeight);
            setState(() {
              blueCardHeight=blueCardHeight+30;
              RedCardHeight=RedCardHeight-30;
              playerBscore+=5;
              });
              double winningHeight=MediaQuery.of(context).size.height-60;
              print(blueCardHeight);
              print(winningHeight);
              if(blueCardHeight>winningHeight){
                print("Player B win ");
                Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultPage(playerBscore,"B")));
              }
          },
          padding: EdgeInsets.zero,
          child: Container(
              height:blueCardHeight,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.topRight,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(child:
                  Text("Player B", 
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ),
                  Text(playerBscore.toString()),
                ],
              ),
          ),
        ),
        MaterialButton( onPressed: () {
         setState(() {
            RedCardHeight=RedCardHeight+30;
          blueCardHeight=blueCardHeight-30;
          playerAscore+=5;
         });
         double screenHeight=MediaQuery.of(context).size.height;
         double maxHeight=MediaQuery.of(context).size.height-60;
         print(screenHeight);
         print(maxHeight);
         if(RedCardHeight>maxHeight){
            print("player A win");
             Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultPage(playerAscore,"A")));
          }
        },
        padding: EdgeInsets.zero,
          child: Container(
              height: RedCardHeight,
              width: double.infinity,
              color: Colors.red,
               alignment: Alignment.bottomRight,
              padding: EdgeInsets.all(10),
              child: Row(
                children: [
                  Expanded(child:
                  Text("Player A", 
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                  ),
                  Text(playerAscore.toString()),
                ],
              ),
          ),
        )
      ],
    ),
   );
  }
}

class ResultPage extends StatelessWidget{
  int score=0;
  String player="";
  ResultPage(this.score,this.player);
  @override
  Widget build(BuildContext context) {
   return Scaffold(
    backgroundColor: player=="A"?Colors.redAccent :Colors.blueAccent,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(score.toString(),
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),
          Text(player=="A"?"PLAYER A WON" : "PLAYER B WON",
          style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),),
          MaterialButton(onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);
          },
          color: Colors.white,
          child: Text("Restart Game"),
          )
        ],
      ),
    ),
   );
  }
}
