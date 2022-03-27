import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          ListTile(
            title: Text("Moradores"),
          ),
          ListTile(
            title: Text("Visitantes"),
          ),
          ListTile(
            title: Text("QRCode"),
          ),
          ListTile(
            title: Text("Informações"),
          ),
        ],
      ),
    );
  }
}
