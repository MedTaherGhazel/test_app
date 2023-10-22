import 'package:flutter/material.dart';

import '../../ui_widget/widgets/drawer.widget.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Container(
          child: Image.asset('images/hbb.jpg'), // Replace with your image path
        ),
      ),
    );
  }
}
