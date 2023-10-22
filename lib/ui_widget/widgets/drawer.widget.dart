import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
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
            title: const Text(
              "Home",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(
              Icons.home,
              color: Colors.red,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/home");
            },
          ),
          const Divider(
            height: 2,
          ),
          ListTile(
            title: const Text(
              "Meteo",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(
              Icons.ac_unit,
              color: Colors.red,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/meteo");
            },
          ),
          const Divider(
            height: 2,
          ),
          ListTile(
            title: const Text(
              "Gallery",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(
              Icons.add_a_photo,
              color: Colors.red,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/gallery");
            },
          ),
          const Divider(
            height: 2,
          ),
          ListTile(
            title: const Text(
              "Settings",
              style: TextStyle(fontSize: 20),
            ),
            leading: const Icon(
              Icons.settings,
              color: Colors.red,
            ),
            trailing: const Icon(
              Icons.arrow_right,
              color: Colors.red,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/counter");
            },
          ),
        ],
      ),
    );
  }
}
