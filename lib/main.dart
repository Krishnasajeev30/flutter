import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:
                EdgeInsets.only(top: 30, bottom: 50, left: 100, right: 100),
          ),
          Container(
            child: Center(
              child: Image.asset('images/jyothi.jpeg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30),
          ),
          Text(
            'Jyothi App',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(padding: EdgeInsets.only(bottom: 40, top: 40)),
          OutlineButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
            padding: EdgeInsets.only(top: 20, bottom: 20, left: 50, right: 50),
            onPressed: () {//change to next page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondRoute(),
                ),
              );
            },
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


class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: Image.asset('images/login.jpeg'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  'Log In',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Email'),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  labelText: 'Password'),
            ),
          ),
          FlatButton(
            color: Colors.black,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                padding: EdgeInsets.only(left: 40,right: 40),
            onPressed: () {},
            child: Text(
              'Log In',
              style: TextStyle(color: Colors.white,fontSize: 15),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text('Forget Password'),
          ),
        ],
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
