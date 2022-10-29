import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:woxro_xentice/controller/button_controller.dart';
import 'package:woxro_xentice/view/constants/spaces/dimensions.dart';
import 'package:woxro_xentice/view/constants/styles/colors.dart';

class WorkTypeButton extends StatelessWidget {
  const WorkTypeButton({
    super.key,
    required this.value,
    required this.title,
  });
  final String value;
  final String title;

  @override
  Widget build(BuildContext context) {
    // ButtonController buttonController = Get.put(ButtonController());
    return GetBuilder<ButtonController>(
      builder: (buttonController) {
        return InkWell(
          onTap: () => buttonController.setWorkType(value),
          child: Row(
            children: [
              Radio(
                value: value,
                groupValue: buttonController.workType,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onChanged: (String? value) {
                  buttonController.setWorkType(value!);
                },
                activeColor: Theme.of(context).primaryColor,
              ),
              kWidth10,
              Text(
                title,
                style: const TextStyle(
                  color: kBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
