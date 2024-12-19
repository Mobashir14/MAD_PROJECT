import 'package:fitness_app/core/api/i_controller.dart';
import 'package:fitness_app/data/repositories/detail_repositories.dart';
import 'package:fitness_app/modules/detail/state.dart';
import 'package:get/get.dart';

class DatailController extends GetxController with IController {
  final DetailState state = DetailState();
  final DetailRepository _repository = DetailRepository();

  String resourceId = Get.parameters['title'] ?? "no-id";

  Future<void> fetBodyPartByName() async {
    actionPerform(
      action: () async {
        state.isLoading = true;
        final response = await _repository.fetBodyPartByName(resourceId);
        state.detailList = response;
      },
      callback: () {
        state.isLoading = false;
      },
    );
  }
}
