import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
          iconSize: 25,
          onPressed: () {},
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
    );
  }
}
