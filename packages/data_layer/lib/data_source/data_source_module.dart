import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiModule {
  @injectable
  Dio get dio => Dio();
}
