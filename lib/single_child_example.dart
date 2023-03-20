import 'package:flutter/material.dart';

class SingleChildExample extends StatelessWidget {
  const SingleChildExample({Key? key}) : super(key: key);

  /// what is SingleChildScrollView?
  /// SingleChildScrollView is a widget that allows you to scroll its child widget
  /// if the child widget is bigger than the screen size.
  /// what is Drawer widget?
  /// Drawer is a widget that allows you to show a widget on the side of the screen.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
