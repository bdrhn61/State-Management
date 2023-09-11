import 'package:get/get.dart';

class SimpleStateController extends GetxController {
  var count = 0;
  void increment() {
    count++;
    update();
  }
}
