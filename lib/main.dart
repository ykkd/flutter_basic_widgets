import 'package:flutter/material.dart';
import 'fooderlich_theme.dart';

void main() {
  // 1
  runApp(const Fooderlich());
}

class Fooderlich extends StatelessWidget {
  // 2
  const Fooderlich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderlichTheme.dark();
    return MaterialApp(
      theme: theme,
      title: 'Fooderlich',
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Fooderlich'),
            titleTextStyle: theme.textTheme.headline6),
        body: Center(
          child: Text('Let\'s get cooking 👩‍🍳',
              style: theme.textTheme.headline1),
        ),
      ),
    );
  }
}
