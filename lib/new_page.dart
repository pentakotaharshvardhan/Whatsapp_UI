import 'package:flutter/material.dart';

class newPage extends StatelessWidget {
  String? title;
  newPage(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(title!),
      ),
    );
  }
}
