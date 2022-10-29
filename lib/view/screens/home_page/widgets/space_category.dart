import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class SpaceCategoryWidget extends StatelessWidget {
  const SpaceCategoryWidget({
    Key? key,
    this.ontap,
    required this.borderColor,
    required this.txtColor,
    required this.iconColor,
    required this.contColor,
  }) : super(key: key);
  final VoidCallback? ontap;
  final Color borderColor;
  final Color txtColor;
  final Color iconColor;
  final Color contColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: .3),
          borderRadius: kRadius05,
          color: contColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                CupertinoIcons.layers_alt,
                size: 35,
                color: iconColor,
              ),
              Text(
                "Industrial Land",
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: txtColor),
              )
            ],
          ),
        ),
      ),
    );
  }
}
