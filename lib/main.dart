import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30, bottom: 50, left:100, right: 100),
          ),
          Container(
            child: Center(
              child: Image.asset('images/jyothi.jpeg'),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 30),),
          Text(
            'Jyothi App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(padding: EdgeInsets.only(bottom: 40,top: 40)),
          OutlineButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
            onPressed: () {},
            child: Text('Sign In'),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          OutlineButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
            onPressed: () {},
            child: Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}
