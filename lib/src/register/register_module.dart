import 'package:flutter_modular/flutter_modular.dart';
import 'package:registro_web/src/register/presenter/pages/register_page.dart';

class RegisterModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (ctx, args) => const RegisterPage()),
      ];
}
