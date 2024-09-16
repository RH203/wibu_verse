import 'package:get_it/get_it.dart';
import 'package:wibu_verse/core/router/router.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  getIt.registerSingleton<AppRouter>(AppRouter());
}
