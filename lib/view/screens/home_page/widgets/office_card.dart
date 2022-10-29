import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class OfficeCard extends StatelessWidget {
  const OfficeCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 170,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey, width: .2),
        borderRadius: kRadius05,
      ),
      child: Column(
        children: [
          //<<<<<Image>>>>>//
          Stack(
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: kGrey,
                  borderRadius: kRadius05,
                ),
                child: Image.network(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/f43f47103473451.5f4f44cfa92f7.jpg",
                ),
              ),

              //<<<<<Favorite>>>>>//
              const Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 5, right: 5),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: kWhite,
                    child: Icon(
                      Icons.favorite_rounded,
                      color: kRed,
                      size: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
          kHeight05,

          //<<<<<Details>>>>>//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Woxro office",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Rs. 2500/Hr",
                  style: TextStyle(
                    color: kRed,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          kHeight05,

          //<<<<<Location>>>>>//
          Row(
            children: const [
              Icon(
                CupertinoIcons.location_solid,
                color: kGreen,
              ),
              kWidth05,
              Text(
                "Thrissur",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
