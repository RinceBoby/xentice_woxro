import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class XenticeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const XenticeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(55);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: kWhite,
      elevation: 0,
      leading: const Icon(
        CupertinoIcons.text_alignleft,
        color: kBlack,
        size: 30,
      ),
      title: const Text(
        "xentice",
        style: TextStyle(
          color: kBlue,
          fontSize: 33,
        ),
      ),
      actions: const [
        CircleAvatar(
          backgroundColor: kTrans,
          backgroundImage: NetworkImage(
            "https://mimotec.ch/wp-content/uploads/2021/03/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile-1.jpg",
          ),
        ),
        kWidth10,
      ],
    );
  }
}
