import 'package:bookshare/ui/book_details/book_details_page.dart';
import 'package:bookshare/ui/home/home_page.dart';
import 'package:bookshare/ui/login/login_page.dart';
import 'package:bookshare/ui/profile/profile_page.dart';
import 'package:bookshare/ui/register/reigister_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Book Share',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),//HomePage(title: 'Milongo App'),
        '/home': (context) => HomePage(),
        '/register': (context) => RegisterPage(),
        '/profile': (context) => ProfilePage(),
        '/bookdetails': (context) => BookDetailsPage(),
      },
    );
  }
}
