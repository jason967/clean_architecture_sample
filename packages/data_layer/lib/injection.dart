import 'package:data_layer/repository/place_holder.repo.impl.dart';
import 'package:domain_layer/repository/place_holder.repo.dart';
import 'package:get_it/get_it.dart';

void dependencyInjection(GetIt? instance) {
  if (instance != null) {
    instance.registerSingleton<PlaceHolderRepository>(
      PlaceHolderRepositoryImpl(),
    );
  }
}
