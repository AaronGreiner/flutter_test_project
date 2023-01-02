import 'package:flutter/material.dart';
import 'package:flutter_test_project/components/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.grey, brightness: Brightness.dark),
      home: const MainWidget(),
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
            const Text('Hello World'),
            ButtonElevated(onPressed: () {}, child: const Text('Hello World')),
            ButtonOutlined(onPressed: () {}, child: const Text('Hello World')),
            ButtonPlain(onPressed: () {}, child: const Text('Hello World')),
          ],
        ),
      ),
    );
  }
}
