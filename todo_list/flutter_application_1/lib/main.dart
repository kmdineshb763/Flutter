import 'package:flutter/material.dart';

void main() {
  runApp( MainApp());
} 

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String displayText = "NoText Data";
  List<String> taskList= [];
    TextEditingController textController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Todo List Application"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          label: Text('enter your task'),
                        ),
                      ),
                    ),
                  ),
                 MaterialButton(
              color: Colors.blue,
              height: 50,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              onPressed: () {
                setState(() {
                  displayText = textController.text;
                  taskList.add(textController.text);
                  textController.clear();
                });
              },
              child: Text("Add"),
            ),
              ],),
            Flexible(
              child: ListView.builder(
                itemCount: taskList.length,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Text(taskList[index]),
                        ),
                      ),
                      MaterialButton(
                        child: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            taskList.removeAt(index);
                          });
                      
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}