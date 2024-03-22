import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_all_example/provider/DarkThemecg.dart';
class DarkTheme extends StatefulWidget {
  const DarkTheme({super.key});

  @override
  State<DarkTheme> createState() => _DarkThemeState();
}

class _DarkThemeState extends State<DarkTheme> {
  @override
  Widget build(BuildContext context) {
    final provider=Provider.of<DarkthemeChanger>(context);
    return Scaffold(
      appBar: AppBar(
        title:  Text('Theme Changer'),
      ),
      body: Column(
        children: [
          RadioListTile(
            title: const Text('Light Theme'),
              value: ThemeMode.light,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme
          ),
          RadioListTile(
            title: const Text('Dark Theme'),
              value: ThemeMode.dark,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme
          ),  RadioListTile(
            title: const Text('System Theme'),
              value: ThemeMode.system,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme
          ),
        ],
      ),
    );
  }
}
