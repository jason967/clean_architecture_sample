import 'package:domain_layer/repository/place_holder.repo.dart';
import 'package:domain_layer/repository/repository.dart';
import 'package:domain_layer/usecase/base/remote.usecase.dart';

class PlaceHolderUsecase {
  PlaceHolderUsecase(this._placeHolderRepository);
  final PlaceHolderRepository _placeHolderRepository;

  Future<dynamic> fetch(RemoteUsecase remoteUsecase) async {
    return await remoteUsecase.execute(_placeHolderRepository);
  }
}
