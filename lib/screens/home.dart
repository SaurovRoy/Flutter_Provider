
import 'package:flutter/material.dart';
import 'package:provider_all_example/screens/Auth/login.dart';
import 'package:provider_all_example/screens/Favourite/favourite_example.dart';
import 'package:provider_all_example/screens/SliderExample.dart';
import 'package:provider_all_example/screens/ThemeChanger/dark_theme.dart';
import 'package:provider_all_example/screens/countExample.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Example of provider state management'),
      ),
      body: Expanded(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const count_example()));
              },
                  child:const Text('Count Example')
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Slider_Example()));
              },
                  child:const Text('Slider Example')
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const Favourite_Example()));
              },
                  child:const Text('Favourite Example')
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DarkTheme()));
              },
                  child:const Text('Theme Changer Example')
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DarkTheme()));
              },
                  child:const Text('Theme Changer Example')
              ),
              OutlinedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LoginScreen()));
              },
                  child:const Text('Login With Provider')
              ),
            ],
          ),
        ),
      ),
    );
  }
}
