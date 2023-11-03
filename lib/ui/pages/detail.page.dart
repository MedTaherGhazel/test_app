import 'package:flutter/material.dart';
import 'package:test_app/domain/affirmation.dart';

class DetailPage extends StatelessWidget {
  final Affirmation affirmation;

  const DetailPage({Key? key, required this.affirmation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              affirmation.desc,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Image.network(
              affirmation.image,
              height: 200,
              width: 200,
            ),
          ],
        ),
      ),
    );
  }
}
