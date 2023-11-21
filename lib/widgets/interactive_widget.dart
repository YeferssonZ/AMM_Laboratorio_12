import 'package:flutter/material.dart';

class InteractiveWidget extends StatelessWidget {
  final VoidCallback onTap;
  final bool isTapped;

  const InteractiveWidget({
    required this.onTap,
    required this.isTapped,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 200,
        height: 200,
        color: isTapped ? Colors.blue : Colors.red,
        child: Center(
          child: Text(
            isTapped ? 'Tocado' : 'Toque aquí',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
