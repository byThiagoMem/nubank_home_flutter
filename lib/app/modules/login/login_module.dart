import 'package:flutter_modular/flutter_modular.dart';

import 'login_Page.dart';
import 'login_store.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => LoginStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => LoginPage()),
    ChildRoute('/', child: (_, args) => LoginPage()),
  ];
}
