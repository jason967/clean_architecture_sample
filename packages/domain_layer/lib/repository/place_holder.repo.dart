import 'package:domain_layer/model/post/post.model.dart';
import 'package:domain_layer/repository/repository.dart';

abstract class PlaceHolderRepository extends Repository {
  // get post list
  Future<List<Post>> getPosts(
      {required String path, Map<String, String>? queries});

  //get post single value
  Future<Post> getPost({required String path, Map<String, String>? queries});
}
