import 'package:get/get.dart';

class Controller extends GetxController {
  var name = 'Daniel'.obs;
  var count = 0.obs;
  increment() => count++;
}
