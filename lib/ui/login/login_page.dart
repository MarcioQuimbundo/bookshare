import 'package:bookshare/ui/login/icon-animated.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            width: size.width,
            height: size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff462EB4),
                  Color(0xffB965D3)
                ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.bookOpen,
                          size:100,
                       color: Colors.white,
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Book Share',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontFamily: 'Georgia',
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(bottom: BorderSide(width: 2, color: Colors.white, style: BorderStyle.solid))
                      ),
                      child: TextField(
                        style: TextStyle(
                          color: Colors.white
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Username',
                          hintStyle: TextStyle(
                            color: Colors.white70
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      width: size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border(bottom: BorderSide(width: 2, color: Colors.white, style: BorderStyle.solid))
                      ),
                      child: TextField(
                        obscureText: true,
                        style: TextStyle(
                          color: Colors.white70
                        ),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.white70
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      height: 45,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Center(
                        child: Text(
                          'Login'.toUpperCase(),
                          style:TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                          )
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Text(
                      'Forget your password ?',
                      style:  TextStyle(
                        color: Colors.white,

                      )
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 185,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                            ),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.facebookF,
                                color: Colors.white
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 185,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(width: 1, color: Colors.white, style: BorderStyle.solid)
                            ),
                            child: Center(
                              child: Icon(
                                FontAwesomeIcons.google,
                                color: Colors.white
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50,),
                    Text(
                      'Ainda não tens uma conta ? Criar conta',
                      style: TextStyle(color: Colors.white),
                    )
                ],
              ),
            ),
          ),
        ),
    );
  }
}