import 'package:flutter/material.dart';


class NotificationsPage extends StatefulWidget {
  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  double value = 50;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          "Notifications Page",
          style: TextStyle(fontSize: 20, color: Colors.indigo[900]),
        ),
      ),
    );
  }
}
