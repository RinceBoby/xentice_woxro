import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class OfficeTypeWidget extends StatelessWidget {
  const OfficeTypeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Commercial Office",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        Text(
          "see all",
          style: TextStyle(
            color: kGrey,
          ),
        ),
      ],
    );
  }
}
