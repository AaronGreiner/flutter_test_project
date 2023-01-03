import 'package:flutter/material.dart';
import 'package:adaptive_theme/adaptive_theme.dart';

import 'main_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.red,
      ),
      dark: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.red,
      ),
      initial: AdaptiveThemeMode.light,
      builder: (theme, darkTheme) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme,
        darkTheme: darkTheme,
        home: const MainWidget(),
      ),
    );
  }
}

class MainWidget extends StatefulWidget {
  const MainWidget({super.key});

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ConstrainedBox(
                constraints: const BoxConstraints(maxHeight: 500),
                child: const MainCard()),
            ElevatedButton(
              onPressed: () {
                changeTheme();
              },
              child: const Text('Dark / Light'),
            ),
          ],
        ),
      ),
    );
  }

  void changeTheme() {
    if (AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark) {
      AdaptiveTheme.of(context).setLight();
    } else {
      AdaptiveTheme.of(context).setDark();
    }
  }
}
