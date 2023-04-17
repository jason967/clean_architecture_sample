import 'package:clean_annotation/annotations.dart';
import 'package:data_layer/common/mapper/place_holder.mapper.dart';
import 'package:data_layer/data_source/place_holder_api/place_holder_api.dart';

import 'package:domain_layer/model/post/post.model.dart';
import 'package:domain_layer/repository/place_holder.repo.dart';

import '../common/dio/rest_client.dart';

part 'place_holder.repo.impl.g.dart';

@repository
class PlaceHolderRepositoryImpl implements PlaceHolderRepository {
  //TODO 추후 다른 방법으로 inject할 방법 모색해야 함
  final dio = RestClient().getDio;

  @override
  Future<Post> getPost({
    required String path,
    Map<String, String>? queries,
  }) async {
    // path's page number
    const String pageNum = '0';

    final postDto = await PlaceHolderApi(dio).getPost(page: pageNum);

    return postDto.toModel();
  }

  @override
  Future<List<Post>> getPosts({
    required String path,
    Map<String, String>? queries,
  }) async {
    final response = await PlaceHolderApi(dio).getPosts();

    final List<Post> posts =
        response.map((postDto) => postDto.toModel()).toList();

    return posts;
  }
}
