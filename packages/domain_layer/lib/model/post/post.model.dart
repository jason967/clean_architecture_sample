import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'post.model.freezed.dart';

part 'post.model.g.dart';

@freezed
class Post with _$Post {
  const factory Post({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _Post;

  factory Post.fromJson(Map<String, Object?> json) => _$PostFromJson(json);
}