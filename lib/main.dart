import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:theme/Themes/theme_dark.dart';
import 'package:theme/Themes/theme_light.dart';
import 'package:theme/screen_drawer.dart';

import 'Themes/theme_notifier.dart';

void main() {
  runApp( MultiProvider(providers: [
           ChangeNotifierProvider(create: (_)=>
           ThemeNotifier())
  ]  ,
          child: const MyApp())

  ) ;
    

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeLight.theme_light,
      darkTheme: Themedark.theme_dark,
      themeMode: ThemeMode.system,
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  State<MyHomePage> createState() => _MyHomePageState();

}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    SetTheme();
  }

void SetTheme() async {
    final prefs = await SharedPreferences.getInstance(); 
    Provider.of<ThemeNotifier>(
        context,listen: false).SetThemeStatus(prefs.getBool("is_dark") ?? false
    );

  }
    bool is_dark = true;

  @override
  Widget build(BuildContext context) {
     context.watch<ThemeNotifier>();
     return ScreenDrawer();
    // return Scaffold(
    //   backgroundColor: Theme.of(context).backgroundColor,
    //   appBar: AppBar(
    //       title: Center(child: Text('State Management')),
    //       // backgroundColor: Colors.blue,
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Center(
    //         child: Text("Dark Mode",
    //         style: Theme.of(context).textTheme.headline1),
    //       ),
    //       InkWell(
    //         onTap: (){
    //
    //          is_dark = !is_dark;
    //          Provider.of<ThemeNotifier>(context,listen: false).SetThemeStatus(is_dark);
    //         },
    //           child: is_dark ? Icon(Icons.accessible)  :Icon(Icons.accessible_forward)
    //       ),
    //       // SizedBox(height: 100,),
    //       // InkWell(
    //       //   onTap: () async {
    //       //     final prefs = await SharedPreferences.getInstance();
    //       //     await prefs.setInt('counter', 10);
    //       //     await prefs.setStringList('items', <String>['Earth', 'Moon', 'Sun']);
    //         // },
    //         // child: Text("set value",style: Theme.of(context).textTheme.headline1),
    //       // ),
    //       // SizedBox(height: 100,),
    //       // InkWell(
    //       //   onTap: () async {
    //       //     final prefs = await SharedPreferences.getInstance();
    //       //     final List<String>? items = prefs.getStringList('items');
    //       //     final int? counter = prefs.getInt('counter') ?? 20;
    //           // print("objectobject${items}");
    //         //
    //         // },
    //         // child: Text("get value",style: Theme.of(context).textTheme.headline1),
    //       // )
    //     ],
    //   ),
    // );
  }
}
