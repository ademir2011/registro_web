import 'package:flutter_modular/flutter_modular.dart';
import 'package:registro_web/src/register/register_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/', module: RegisterModule()),
      ];
}
