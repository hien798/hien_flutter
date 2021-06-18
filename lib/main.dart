import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../router/routes.dart';
import '../theme/theme.dart';
import '../bloc/bloc.dart';
import '../app.dart';

import 'locale/locale.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final app = App();
  await app.setup();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>.value(value: app.appCubit),
        BlocProvider<AuthCubit>.value(value: app.authCubit),
      ],
      child: MyApp(app: app),
    ),
  );
}

class MyApp extends StatefulWidget {
  late final App app;

  MyApp({Key? key, required this.app}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _naviKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          title: UI.app_name,
          navigatorKey: _naviKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeDataExt.build(state.theme),
          onGenerateRoute: routes(repo: widget.app.repository),
          supportedLocales: AppLocalizations.delegate.supportedLocales,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          locale: state.locale,
          localeResolutionCallback: AppLocalizations.delegate.resolution(
            fallback: AppLocalizations.delegate.supportedLocales.first,
          ),
        );
      },
    );
  }
}
