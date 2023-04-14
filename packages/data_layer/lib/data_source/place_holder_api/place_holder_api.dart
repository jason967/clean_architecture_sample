import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../dto/place_holder/place_holder_dto.dart';

part 'place_holder_api.g.dart';

const String baseUrl = 'https://jsonplaceholder.typicode.com/';

@RestApi(baseUrl: baseUrl)
abstract class PlaceHolderApi {
  factory PlaceHolderApi(Dio dio, {String? baseUrl}) = _PlaceHolderApi;

  @GET('/posts')
  Future<List<PostDto>> getPosts();

  @GET('/posts/{page}')
  Future<PostDto> getPost({required String page});
}
