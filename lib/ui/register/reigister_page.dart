import 'package:flutter/material.dart';

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
      body: Container(
        decoration: BoxDecoration(
          gradient: RegisterPage.GRBOOKSHARE,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              "BookShare",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 100,
            ),
            Form(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        labelText: "username",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        labelText: "Username",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        labelText: "E-mail",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        labelText: "Password",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30)),
                    child: TextField(
                      style: TextStyle(color: Colors.white, fontSize: 18),
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        labelText: "Confirm Password",
                        labelStyle:
                            TextStyle(color: Colors.white, fontSize: 16),
                        hintStyle: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 25),
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        'Registar'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
