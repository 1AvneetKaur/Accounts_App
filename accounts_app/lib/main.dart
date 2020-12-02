import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:accounts_app/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignUpPage()
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 31, top: 77),
                child: Text('Welcome,', style: new TextStyle(
                  fontWeight: FontWeight.bold
                ), textScaleFactor: 2.5),
                padding: EdgeInsets.only(right: 205)
            ),
            Container(
              padding: EdgeInsets.only(bottom: 127, right: 175),
              margin: EdgeInsets.only(left: 25, top: 20),
              child: Text('Sign in to continue!', style: new TextStyle(
    fontSize: 17.0,
    color: Colors.grey
    ),
              textScaleFactor: 1.2),
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Enter your Email ID',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5)
                  ),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.grey, width: 1.5)
                  )
              ),
            ),
          Container(
             margin: EdgeInsets.only(top: 13),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your Password',
                border: OutlineInputBorder(

                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)
                ),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey, width: 1.5)
                ),

              ),
            ),

            Container(
              child: Text('Forgot Password ?'),
              margin: EdgeInsets.only(left: 255, top: 23),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 100.0
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 170, right: 170, top: 5, bottom: 5
              ),
              child: Text('Login'),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.redAccent, Colors.yellow]
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 150.0),
            ),
            Container(
              decoration: BoxDecoration(
                //  border: Border.all(
                //    color: Colors.grey,),
                  borderRadius: BorderRadius.circular(50.0)),
     //         child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
                //  children: <Widget>[
                //               ImageIcon(AssetImage('assets/facebook.png'))
                //],
          //    ),
            ),
            Container(
              child:
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text(
                  'I am a new user, Sign up',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
