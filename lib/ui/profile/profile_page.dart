import 'package:bookshare/ui/profile/widget_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFF0462EB4),
        centerTitle: true,
        title: new Text("Profile"),
        actions: <Widget>[
          Icon(Icons.notifications_none, size: 40,)
        ],
      ),
      body: Profilr_widget(),
    );
  }
}
