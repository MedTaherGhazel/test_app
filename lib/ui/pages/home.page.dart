import 'package:flutter/material.dart';
import 'package:test_app/ui/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Text('Home Page',
            style: Theme.of(context).textTheme.headlineMedium),
      ),
    );
  }
}
