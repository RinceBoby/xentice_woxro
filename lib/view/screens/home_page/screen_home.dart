import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';
import 'package:woxro_xentice/view/screens/property/property_screen.dart';
import 'package:woxro_xentice/view/widgets/appBar.dart';
import 'package:woxro_xentice/view/screens/home_page/widgets/office_card.dart';
import 'package:woxro_xentice/view/screens/home_page/widgets/office_type.dart';
import 'package:woxro_xentice/view/screens/home_page/widgets/space_category.dart';

// ignore: must_be_immutable
class ScreenHome extends StatelessWidget {
  ScreenHome({super.key});

  List<String> items = [
    "Property",
    "Services",
  ];

  int tappedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: const XenticeAppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(18, 18, 18, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              //<<<<<Search_Box>>>>>//
              SizedBox(
                height: 45,
                child: TextField(
                  focusNode: FocusNode(),
                  style: const TextStyle(color: kGrey),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(CupertinoIcons.search),
                    contentPadding: EdgeInsets.only(top: 5),
                    hintText: "Search",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              kHeight15,

              //<<<<<Tab>>>>>//
              SizedBox(
                height: 38,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => kWidth10,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        tappedIndex == index;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenProperty(),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: tappedIndex == index
                              ? Border.all(color: kGrey, width: .2)
                              : Border.all(color: kTrans),
                          borderRadius: kRadius10,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 8,
                          ),
                          child: Text(
                            items[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kBlack,
                              fontWeight: tappedIndex == index
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),

              kHeight15,

              //<<<<<Categories>>>>>//
              SizedBox(
                height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return const SpaceCategoryWidget(
                        contColor: kWhite,
                        borderColor: kGrey,
                        txtColor: kBlack,
                        iconColor: kBlack,
                      );
                    },
                    separatorBuilder: (context, index) => kWidth10,
                    itemCount: 4),
              ),

              kHeight20,

              //<<<<<Offices>>>>>//
              const OfficeTypeWidget(),
              kHeight15,
              Row(
                children: const [
                  kWidth05,
                  OfficeCard(),
                  kWidth10,
                  OfficeCard(),
                ],
              ),
              kHeight20,

              //<<<<<Offices>>>>>//
              const OfficeTypeWidget(),
              kHeight15,
              Row(
                children: const [
                  kWidth05,
                  OfficeCard(),
                  kWidth10,
                  OfficeCard(),
                ],
              ),
              kHeight20,

              //<<<<<Offices>>>>>//
              const OfficeTypeWidget(),
              kHeight15,
              Row(
                children: const [
                  kWidth05,
                  OfficeCard(),
                  kWidth10,
                  OfficeCard(),
                ],
              ),
              kHeight20,
            ],
          ),
        ),
      ),
    );
  }
}
