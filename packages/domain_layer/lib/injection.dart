import 'package:data_layer/repository/place_holder.repo.impl.dart';
import 'package:domain_layer/repository/place_holder.repo.dart';
import 'package:domain_layer/usecase/place_holder.usecase.dart';
import 'package:domain_layer/usecase/place_holder/get_post_info.usecase.dart';
import 'package:get_it/get_it.dart';
import 'package:data_layer/injection.dart' as data;

void dependencyInjection(GetIt? instance) {
  if (instance != null) {
    data.dependencyInjection(instance);
    instance.registerFactoryParam<PlaceHolderUsecase, PlaceHolderRepository,
        PlaceHolderRepository>(
      (placeHolderRepository, _) => PlaceHolderUsecase(placeHolderRepository),
    );
    instance.get<PlaceHolderUsecase>(param1: instance<PlaceHolderRepository>());
  }
}
