import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LoginState();
  }
}

class LoginState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _LoginState();
  }
}

class _LoginState extends State<LoginState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter your username',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Enter your password',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ),
                  Container(),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      //buttonColor: Colors.blueAccent,
                      child: RaisedButton(
                        elevation: 10,
                        color: Colors.blueAccent,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),

                      ),
                    ),
                  ),
                  Container(
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      child: RaisedButton(
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
