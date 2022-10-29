import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SizedBox(
        height: 50,
        child: TextField(
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          focusNode: FocusNode(),
          textCapitalization: TextCapitalization.words,
          decoration: InputDecoration(
            labelText: label,
            labelStyle: const TextStyle(
              color: kGrey,
              fontWeight: FontWeight.bold,
            ),
            border: const OutlineInputBorder(),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: kGrey),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: kGrey),
            ),
          ),
        ),
      ),
    );
  }
}
