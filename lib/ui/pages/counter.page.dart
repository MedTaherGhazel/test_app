import 'package:flutter/material.dart';

import '../../ui_widget/widgets/drawer.widget.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const MyDrawer(),
      body: const Center(
        child: Text('Settings'),
      ),
    );
  }
}
