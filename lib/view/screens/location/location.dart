import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';
import 'package:woxro_xentice/view/screens/home_page/screen_home.dart';
import 'package:woxro_xentice/view/screens/location/widgets/button_widget.dart';
import 'package:woxro_xentice/view/widgets/progress_bar.dart';
import 'package:woxro_xentice/view/widgets/text_field.dart';
import 'package:woxro_xentice/view/screens/property/property_screen.dart';
import 'package:woxro_xentice/view/widgets/appBar.dart';

class ScreenLocation extends StatelessWidget {
  const ScreenLocation({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const XenticeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //<<<<<Progress_Bar>>>>>//
            ProgressBarWidget(
              size: size,
              title: "Location",
              fraction: "3/4",
              percent: .75,
            ),

            //<<<<<State>>>>>//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  kHeight20,
                  Container(
                    height: 50,
                    width: size.width,
                    decoration: BoxDecoration(
                      color: kGrey,
                      borderRadius: kRadius05,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 13, 0, 10),
                      child: Text(
                        "India",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kGrey.shade700,
                        ),
                      ),
                    ),
                  ),
                  kHeight10,

                  //<<<<<Text_Field>>>>>//
                  const TextFieldWidget(label: "City"),
                  const TextFieldWidget(label: "Locality"),
                  const TextFieldWidget(label: "Street"),
                  kHeight10,

                  //<<<<<Location>>>>>//
                  Container(
                    height: 250,
                    width: size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/kochi.jpg'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  kHeight15,

                  //<<<<<Buttons>>>>>//
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ButtonWidget(
                        size: size,
                        text: "Back",
                        bgColor: kWhite,
                        textColor: const Color.fromARGB(255, 1, 82, 149),
                        onTap: () => Navigator.pop(context),
                      ),
                      ButtonWidget(
                        size: size,
                        text: "Continue",
                        bgColor: const Color.fromARGB(255, 1, 82, 149),
                        textColor: kWhite,
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenHome(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
