import 'package:domain_layer/repository/place_holder.repo.dart';

import 'package:domain_layer/usecase/base/remote.usecase.dart';

import '../../model/post/post.model.dart';

class GetPostInfo implements RemoteUsecase {
  GetPostInfo(this.path, {this.params});
  final String path;
  final Map<String, String>? params;

  @override
  Future<List<Post>> execute(
    PlaceHolderRepository placeHolderRepository,
  ) async {
    final response = await placeHolderRepository.getPosts(path: path);
    return response;
  }
}
