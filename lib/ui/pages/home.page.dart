import 'package:flutter/material.dart';
import 'package:test_app/data/loaddata.dart';
import 'package:test_app/domain/affirmation.dart';
import 'package:test_app/ui_widget/widgets/drawer.widget.dart';
import 'package:test_app/ui/pages/detail.page.dart'; // import your detail page

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
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          child: Image.network(
                            affirmations[index].image,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  },
                  child: Image.network(affirmations[index].image),
                ),
                ListTile(
                  title: Center(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(affirmation: affirmations[index]),
                          ),
                        );
                      },
                      child: Text(affirmations[index].desc),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
