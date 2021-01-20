import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RegisterState();
  }
}

class RegisterState extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _RegisterState();
  }
}

class _RegisterState extends State<RegisterState> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              controller: ScrollController(),
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
                          labelText: 'Enter your email',
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
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      //buttonColor: Colors.blueAccent,
                      child: RaisedButton(
                        elevation: 10,
                        onPressed: () {},
                        color: Colors.red,
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                        ),
                        child: Text(
                          'Register',
                        ),

                      ),
                    ),
                  ),
                  Container(
                    child: ButtonTheme(
                      minWidth: MediaQuery.of(context).size.width - 10,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        color: Colors.blueAccent,
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
