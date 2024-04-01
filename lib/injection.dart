import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(initializerName: 'initGetIt')
void configureDependencies(String env) => getIt.initGetIt(environment: env);
