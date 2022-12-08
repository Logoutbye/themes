import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/home_screen.dart';
import 'package:theme/second_screen.dart';

import 'Themes/theme_notifier.dart';

class ScreenDrawer extends StatefulWidget {
  const ScreenDrawer({Key? key}) : super(key: key);

  @override
  State<ScreenDrawer> createState() => _ScreenDrawerState();
}

class _ScreenDrawerState extends State<ScreenDrawer> {

  bool is_dark = true;

  @override
  Widget build(BuildContext context) {
    context.watch<ThemeNotifier>();

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      // appBar: AppBar(
      //   title: Center(child: Text('State Management')),
      //   backgroundColor: Colors.blue,
      // ),
      drawer: Container(
        color: Colors.tealAccent,
        width: MediaQuery.of(context).size.width- 100,
        height: MediaQuery.of(context).size.height,
        child: InkWell(
            onTap: (){

              is_dark = !is_dark;
              Provider.of<ThemeNotifier>(context,listen: false).SetThemeStatus(is_dark);
              Navigator.of(context).pop();
            },
            child: is_dark ? Icon(Icons.accessible)  :Icon(Icons.accessible_forward)
        ),
      ),
      body:context.watch<ThemeNotifier>().getScreenStatus ? HomeScreen() : SecondScreen()
    );
  }
}
