import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app/src/repository/auth.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AuthRepo());
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Log Out'),
              onTap: () {
                controller.logout();
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text("Dashboard")),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Perform some action when the icon is pressed
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Dashboard"),
      ),
    );
  }
}
