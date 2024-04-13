import 'package:agus_app/screens/routes/SecondScreen/custom_screen.dart';
import 'package:agus_app/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  void goToAnotherRoute(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.campaign)), // 0
              Tab(icon: Icon(Icons.explore)), // 1
              Tab(icon: Icon(Icons.person)), // 2
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const CustomScreen(), // 0
            // 1
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/news-screen');
                  },
                  icon: Icon(Icons.article),
                  iconSize: 48, // Custom icon size
                  color: Colors.blue,
                  tooltip: 'Get Data News', // Tooltip
                ),
                SizedBox(height: 20),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/create-news-screen');
                  },
                  icon: Icon(Icons.create),
                  iconSize: 48, // Custom icon size
                  color: Colors.green,
                  tooltip: 'Create Data News', // Tooltip
                ),
              ],
            ),
            const SettingScreen(),
          ],
        ),
      ),
    );
  }
}
