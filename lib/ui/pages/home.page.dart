// lib/ui/pages/home.page.dart
import 'package:flutter/material.dart';
import 'package:test_app/data/loaddata.dart';
import 'package:test_app/domain/affirmation.dart';
import 'package:test_app/ui_widget/widgets/drawer.widget.dart';

class HomePage extends StatelessWidget {
  final List<Affirmation> affirmations = loaddata();

  HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: affirmations.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: <Widget>[
                Image.network(affirmations[index].image),
                ListTile(
                    title: Center(
                  child: Text(affirmations[index].desc),
                )),
              ],
            ),
          );
        },
      ),
    );
  }
}
