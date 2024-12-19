import 'package:fitness_app/modules/detail/binding.dart/detail_binding.dart';
import 'package:fitness_app/modules/detail/views/detail_view.dart';
import 'package:fitness_app/modules/home/bindings/home_bindings.dart';
import 'package:fitness_app/modules/home/views/home_view.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailView(),
      binding: DetailBinding(),
    ),
  ];
}
