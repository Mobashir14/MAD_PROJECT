import 'package:fitness_app/modules/detail/controllers/detail_controller.dart';
import 'package:get/get.dart';

class DetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DatailController>(
      () => DatailController(),
    );
  }
}
