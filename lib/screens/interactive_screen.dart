import 'package:flutter/material.dart';
import '../widgets/interactive_widget.dart';

class InteractiveScreen extends StatefulWidget {
  @override
  _InteractiveScreenState createState() => _InteractiveScreenState();
}

class _InteractiveScreenState extends State<InteractiveScreen> {
  bool isTapped = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Interactiva'),
      ),
      body: Center(
        child: InteractiveWidget(
          onTap: () {
            setState(() {
              isTapped = !isTapped;
            });
          },
          isTapped: isTapped,
        ),
      ),
    );
  }
}
