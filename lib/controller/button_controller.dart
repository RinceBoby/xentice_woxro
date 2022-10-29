import 'package:get/get.dart';

class ButtonController extends GetxController {
  String _workType = "Sell";
  String get workType => _workType;
  void setWorkType(String type) {
    _workType = type;
    update();
  }
}
