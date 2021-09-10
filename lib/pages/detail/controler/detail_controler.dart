import 'package:get/get.dart';
import 'package:working_with_getx/pages/detail/models/list_models.dart';

class DetailPageControler extends GetxController {
  final user = User(name: "Camila", family: "Adrian", age: 18).obs;
  final listofname = [].obs;
  final myMap = <String, int>{}.obs;
}
