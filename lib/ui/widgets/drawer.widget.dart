import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeader(
              decoration: BoxDecoration(
                  gradient: RadialGradient(
                      radius: 0.7,
                      colors: [Colors.red, Color.fromARGB(255, 0, 163, 245)])),
              child: Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("images/hbb.jpg"),
                ),
              )),
          ListTile(
            title: Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.red,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
            // onLongPress:() {},
          ),
          Divider(
            height: 2,
          ),
          ListTile(
            title: Text(
              "Meteo",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
          ),
          Divider(
            height: 2,
          ),
          ListTile(
            title: Text(
              "Gallery",
              style: TextStyle(fontSize: 20),
            ),
            leading: Icon(
              Icons.add_a_photo,
              color: Colors.red,
            ),
            trailing: Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
          ),
          Divider(
            height: 2,
          ),
        ],
      ),
    );
  }
}