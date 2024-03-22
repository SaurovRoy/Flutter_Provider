import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/DarkThemecg.dart';
import 'package:provider_all_example/provider/SliderProvider.dart';
import 'package:provider_all_example/provider/auth_provider.dart';
import 'package:provider_all_example/provider/countProvider.dart';
import 'package:provider_all_example/provider/favourite_provider.dart';
import 'package:provider_all_example/screens/SliderExample.dart';
import 'package:provider_all_example/screens/countExample.dart';
import 'package:provider_all_example/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_)=>count_provider()),
        ChangeNotifierProvider(create: (_)=>Slider_Provider()),
        ChangeNotifierProvider(create: (context)=>FavouriteProvider()),
          ChangeNotifierProvider(create: (context)=>DarkthemeChanger()),
          ChangeNotifierProvider(create: (context)=>AuthProvider()),
        ],
    child:Builder(
      builder: (BuildContext context){
        final themeChanger=Provider.of<DarkthemeChanger>(context);
        return MaterialApp(
          title: 'Flutter Demo',
          themeMode: themeChanger.themeMode,
          theme: ThemeData(
          brightness: Brightness.light,
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
            primarySwatch: Colors.yellow,
          ),
          debugShowCheckedModeBanner: false,
          home: const Home(),
        );
      },
    )



    ) ;


  }
}

