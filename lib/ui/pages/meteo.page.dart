import 'package:flutter/material.dart';
import 'package:test_app/ui_widget/widgets/drawer.widget.dart';

class MeteoPage extends StatelessWidget {
  const MeteoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meteo'),
      ),
      drawer: const MyDrawer(),
      body: const Center(child: Text('Meteo')),
    );
  }
}
