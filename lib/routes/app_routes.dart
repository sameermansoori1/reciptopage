import 'package:flutter/material.dart';
import 'package:sameer_s_application2/presentation/recipto_screen/recipto_screen.dart';

class AppRoutes {
  static const String reciptoScreen = '/recipto_screen';

  static Map<String, WidgetBuilder> routes = {
    reciptoScreen: (context) => ReciptoScreen()
  };
}
