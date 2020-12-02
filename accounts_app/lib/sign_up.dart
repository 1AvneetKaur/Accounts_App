import 'package:accounts_app/main.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/login': (BuildContext context) => new MyHomePage()
      },
      home: new MyHomePage(),
    );
  }
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        //yha column  h
        children: <Widget>[
          Container(
              margin: EdgeInsets.only(left: 21, top: 77, right: 125),
              child: Text('Create Account,', style: new TextStyle(
                  fontWeight: FontWeight.bold
              ), textScaleFactor: 2.4),
            //  padding: EdgeInsets.only(right: 205)
          ),

          Container(
            padding: EdgeInsets.only(bottom: 127, right: 155),
            margin: EdgeInsets.only(left: 20, top: 13),
            child: Text('Sign up to get started!', style: new TextStyle(

                fontSize: 17.0,
                color: Colors.grey
            ),
                textScaleFactor: 1.2),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Full Name',
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
            margin: EdgeInsets.only(top: 15),
          ),
          TextField(
            decoration: InputDecoration(
                hintText: 'Email ID',
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
            margin: EdgeInsets.only(top: 15),
          ),
          TextField(
              decoration: InputDecoration(
                hintText: 'Password',
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
            margin: EdgeInsets.only(top: 50),
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
  margin: EdgeInsets.only(top: 200),
),
          GestureDetector(
            // in 90% of cases GD will be on top
            onTap: (){

            },

            child:Container(
              child:
              InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('/');
                },
                child: Text(
                  'I am a new user, Sign in',
                ),
              ),
            ),
          ),


        ],
      ),
    );
  }
}