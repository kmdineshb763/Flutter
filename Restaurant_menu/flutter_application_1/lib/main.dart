import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Restaurant Menu'),
        backgroundColor: Colors.orange,
      ),
      body: ListView(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          height: 100,
          width: double.infinity,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
        Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        height: 100,
        width: double.infinity,
        margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Chicken Biryani', style: TextStyle(fontSize:18, fontWeight: FontWeight.bold)),
              Text('Delicious chicken biryani with '),
              Text('\$ 12.50', style: TextStyle(fontSize:16, fontWeight: FontWeight.bold)),
            ],
          ),
      ),
      ]
          ),
      ),
    );
  }
}
