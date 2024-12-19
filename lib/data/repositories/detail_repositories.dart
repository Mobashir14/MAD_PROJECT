import 'package:dio/dio.dart';
import 'package:fitness_app/data/provider/datail_provider.dart';
import 'package:fitness_app/data/repositories/i_repository.dart';

class DetailRepository extends IRepository<Response> {
  @override
  DetailProvider get provider => DetailProvider();

  Future<List<dynamic>> fetBodyPartByName(String name) async {
    final response = await provider.fetBodyPartByName(name);
    var res = response.data as List;
    return res;
  }
}
