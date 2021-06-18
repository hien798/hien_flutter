import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hien_flutter/features/newsfeed/newsfeed.dart';
import '../../../bloc/bloc.dart';
import '../../../share/share.dart';

class HomeScreen extends StatefulWidget {
  static const route = '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AppCubit? _appCubit;

  @override
  void initState() {
    _appCubit = BlocProvider.of<AppCubit>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text('MegaBing'),
            centerTitle: true,
          ),
          body: SafeArea(
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                'Welcome to MegaBing 6X'.toText(selectable: true),
                ElevatedButton.icon(
                  onPressed: () {
                    _appCubit?.onChangedTheme();
                  },
                  icon: Icon(state.theme == ThemeMode.light
                      ? Icons.dark_mode
                      : Icons.light_mode),
                  label: Text('Theme'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed(NewsFeedScreen.route);
                  },
                  icon: Icon(Icons.feed),
                  label: Text('Newsfeeds'),
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}
