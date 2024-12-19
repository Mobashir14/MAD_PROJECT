import 'package:fitness_app/data/provider/home_provider.dart';
import 'package:fitness_app/data/repositories/i_repository.dart';
import 'package:dio/dio.dart';

class HomeRepository extends IRepository<Response> {
  @override
  HomeProvider get provider => HomeProvider();

  Future<List<dynamic>> fetBodyPartList() async {
    final response = await provider.fetBodyPartList();
    var res = response.data as List;

    return res;
  }
}
