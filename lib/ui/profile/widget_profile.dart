import 'package:flutter/material.dart';

Color textColors = Colors.white;

class Profilr_widget extends StatefulWidget {
  @override
  _Profilr_widgetState createState() => _Profilr_widgetState();
}

class _Profilr_widgetState extends State<Profilr_widget> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFFFB965D3), Color(0xFFF0462EB4)],
              begin: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 190,
                      height: 190,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                "https://pixel.nymag.com/imgs/daily/vulture/2018/07/25/25-post-malone-2.w700.h467.jpg"),
                          )),
                    ),
                    new Text(
                      "Anísio Isidoro Gomes",
                      style: TextStyle(color: textColors),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Text(
                    "LER LIVRO É BOM ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: textColors),
                  ),
                ),
                Center(
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SizedBox(
                            width: 10,
                          ),
                          chipCustom("Meus Livos"),
                          SizedBox(
                            width: 10,
                          ),
                          chipCustom("Livros Emprestados"),
                          SizedBox(
                            width: 10,
                          ),
                          chipCustom("Livros publicados"),
                        ],
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Single",
                              style: TextStyle(color: textColors),
                            )
                          ],
                        )),
                        Expanded(
                            child: Column(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.favorite,
                                size: 100,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Single",
                              style: TextStyle(color: textColors),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}

Widget chipCustom(String texto) {
  return Center(
    child: GestureDetector(
      child: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            texto,
            style: TextStyle(color: Colors.white),
          ),
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white)),
      ),
    ),
  );
}
