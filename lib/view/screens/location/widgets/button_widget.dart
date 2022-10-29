import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    Key? key,
    required this.size,
    required this.text,
    required this.bgColor,
    required this.textColor,
    this.onTap,
  }) : super(key: key);

  final Size size;
  final String text;
  final Color textColor;
  final Color bgColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: bgColor,
        fixedSize: Size(size.width * .4, 50),
        elevation: 0,
        side: const BorderSide(
          color: Color.fromARGB(255, 1, 82, 149),
          width: 1.5,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
          fontSize: 17,
        ),
      ),
    );
  }
}
