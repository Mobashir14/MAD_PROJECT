import 'package:fitness_app/data/provider/i_provider.dart';

abstract class IRepository<T> {
  IProvider<T> get provider;
}
