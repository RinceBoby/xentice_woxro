import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class ProgressBarWidget extends StatelessWidget {
  const ProgressBarWidget({
    Key? key,
    required this.size,
    required this.title,
    required this.fraction,
    required this.percent,
    this.ontap,
  }) : super(key: key);

  final Size size;
  final String title;
  final String fraction;
  final double percent;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
         height: 90,
        width: size.width,
        color: kGrey.shade200,
        child: Row(
          children: [
            kWidth30,
            CircularPercentIndicator(
              radius: 30,
              lineWidth: 7,
              percent: percent,
              progressColor: Colors.blue[900],
              backgroundColor: kWhite,
              center:  Text(
                fraction,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            kWidth10,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                kHeight10,
                Text(
                  "Progress Details   >",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
