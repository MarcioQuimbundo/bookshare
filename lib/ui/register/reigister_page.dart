import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key key}) : super(key: key);

  static const LinearGradient GRBOOKSHARE = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    // Add one stop for each color. Stops should increase from 0 to 1
    //stops: [0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3, 0.3],
    stops: null,
    colors: [
      // Colors are easy thanks to Flutter's Colors class.

      Colors.deepPurpleAccent,
      Colors.purple,
    ],
  );

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Container(
        decoration: BoxDecoration(
          gradient: RegisterPage.GRBOOKSHARE,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.bookOpen,
                    size: 70,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Book Share',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: 'Georgia',
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 70,),
              Form(
                child: Column(
                  children: <Widget>[
                    Container(
                      width: size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Username',
                            hintStyle: TextStyle(color: Colors.white70)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'E-mail',
                            hintStyle: TextStyle(color: Colors.white70)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white70)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                                  color: Colors.white,
                                  style: BorderStyle.solid))),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.white70)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                        child: Text('Register'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
