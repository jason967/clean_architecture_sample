import 'package:data_layer/dto/place_holder/post/post.dto.dart';
import 'package:domain_layer/model/post/post.model.dart';

extension PostEx on PostDto {
  Post toModel() {
    return Post(
      userId: userId ?? 0,
      id: id ?? 0,
      title: title ?? '',
      body: body ?? '',
    );
  }
}
