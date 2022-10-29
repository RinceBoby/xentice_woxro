import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woxro_xentice/controller/button_controller.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';
import 'package:woxro_xentice/view/screens/home_page/widgets/space_category.dart';
import 'package:woxro_xentice/view/screens/location/location.dart';
import 'package:woxro_xentice/view/screens/property/widget/radio_button.dart';
import 'package:woxro_xentice/view/widgets/appBar.dart';
import 'package:woxro_xentice/view/widgets/progress_bar.dart';
import 'package:woxro_xentice/view/widgets/text_field.dart';

class ScreenProperty extends StatelessWidget {
  const ScreenProperty({super.key});

  @override
  Widget build(BuildContext context) {
    int tappedIndex = 1;
    Get.put(ButtonController());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const XenticeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //
            //<<<<<Progress_Bar>>>>>//
            ProgressBarWidget(
              size: size,
              title: "Property",
              fraction: "1/4",
              percent: .25,
              ontap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ScreenLocation()),
              ),
            ),
            kHeight15,

            //<<<<<Categories>>>>>//
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    spacing: 10,
                    runSpacing: 15,
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      9,
                      (index) => SpaceCategoryWidget(
                        contColor: tappedIndex==index ?kDeBlue:kWhite,
                        borderColor: kGrey,
                        txtColor: tappedIndex == index ? kWhite : kBlack,
                        iconColor: tappedIndex == index ? kWhite : kBlack,
                      ),
                    ),
                  ),
                  kHeight10,

                  //<<<<<Text_field>>>>>//
                  const TextFieldWidget(label: "Property Title"),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Transaction Type",
                      style: TextStyle(
                        color: kGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),

                  Row(
                    children: const [
                      WorkTypeButton(value: "Sell", title: "Sell"),
                      WorkTypeButton(value: "Rent", title: "Rent"),
                      WorkTypeButton(value: "Lease", title: "Lease"),
                    ],
                  ),

                  Row(
                    children: [
                      const Expanded(child: TextFieldWidget(label: "Price")),
                      kWidth15,
                      hourConatainer(),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                          child: TextFieldWidget(label: "Build Area")),
                      kWidth15,
                      hourConatainer(),
                    ],
                  ),
                  Row(
                    children: [
                      const Expanded(
                          child: TextFieldWidget(label: "Plot Area")),
                      kWidth15,
                      hourConatainer(),
                    ],
                  ),

                  const TextFieldWidget(label: "Seating Capacity")
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  //
  //<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Methods>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>//
  //
  //<<<<<Hour_Container>>>>>//
  hourConatainer() {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: kGrey),
        borderRadius: kRadius05,
      ),
      child: const Center(
        child: Text(
          "/Hr",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
