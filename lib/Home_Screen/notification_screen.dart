import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Notifications',
          style: TextStyle(fontFamily: 'Pacifico'),
        ),
      ),
      body: Center(
        child: Text(
          'No notifications yet.',
          style: TextStyle(fontSize: 18, color: Colors.black, fontFamily: 'Montserrat'),
        ),
      ),
    );
  }
}
