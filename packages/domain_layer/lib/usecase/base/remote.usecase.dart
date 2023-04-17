import 'package:domain_layer/repository/place_holder.repo.dart';

abstract class RemoteUsecase {
  Future<dynamic> execute(PlaceHolderRepository placeHolderRepository);
}
