import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hien_flutter/features/newsfeed/newsfeed.dart';
import '../features/feature.dart';
import '../data/data.dart';
import '../bloc/bloc.dart';

var bootStage = 1;

RouteFactory routes({@required Repository? repo}) {
  return (RouteSettings settings) {
    var fullScreen = false;
    Widget? screen;

    if (bootStage == 1) {
      bootStage = 2;
      return PageRouteBuilder(
        pageBuilder: (_, __, ___) => SplashScreen(),
      );
    }
    final arguments = settings.arguments as Map<String, dynamic>? ?? {};
    switch (settings.name) {
      case HomeScreen.route:
        screen = HomeScreen();
        break;
      case NewsFeedScreen.route:
        screen = NewsFeedScreen();
        break;
      default:
        screen = HomeScreen();
    }

    if (bootStage == 2) {
      bootStage = 3;

      return PageRouteBuilder(
        pageBuilder: (BuildContext context, _, __) {
          return screen!;
        },
        transitionDuration: const Duration(milliseconds: 500),
      );
    }

    if (fullScreen) {
      return MaterialPageRoute(
        builder: (_) => screen!,
        fullscreenDialog: true,
      );
    }

    return PageRouteBuilder(pageBuilder: (BuildContext context, _, __) {
      return screen!;
    }, transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
      return FadeTransition(opacity: animation, child: child);
    });
  };
}
