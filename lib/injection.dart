import 'package:get_it/get_it.dart';
import 'package:domain_layer/injection.dart' as domain;

final locator = GetIt.instance;

void initLocator() {
  // locator.registerSingleton(()=>)
  domain.dependencyInjection(locator);
}
