import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../domain/router.gr.dart';
import 'locator.config.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() {
  $initGetIt(locator);
  locator.registerSingleton(AppRouter());
}
