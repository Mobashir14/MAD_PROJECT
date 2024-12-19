import 'package:fitness_app/core/api/api_provider.dart';
import 'package:fitness_app/data/provider/i_provider.dart';
import 'package:dio/dio.dart';

class HomeProvider extends IProvider<Response> {
  @override
  String get endpoint => "/exercises";

  Future<Response> fetBodyPartList() async {
    return await ApiProvider.instance.get(endpoint: "$endpoint/bodyPartList");
  }
}
