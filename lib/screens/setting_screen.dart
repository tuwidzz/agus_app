import 'package:flutter/material.dart';
import 'package:agus_app/components/asset_image_widget.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _count = 0;
  final String description =
      "Nama Saya I Putu Agus Wiadnyana dari kelas IKI SI4";

  void _increment() {
    setState(() {
      _count++;
    });
  }

  void _decrement() {
    if (_count > 0) {
      setState(() {
        _count--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AssetImageWidget(
              imagePath: 'assets/images/agus.png',
              width: 240,
              height: 360,
              fit: BoxFit.cover,
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hiii, Nama Saya I Putu Agus Wiadnyana dari kelas IKI SI4. Aplikasi ini dikembangkan dari basis source code agus_app...",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 10), // Space between text and buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: _increment,
                        icon: const Icon(Icons.thumb_up),
                      ),
                      IconButton(
                        onPressed: _count > 0 ? _decrement : null,
                        icon: const Icon(Icons.thumb_down),
                      ),
                      Text('$_count Likes')
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
