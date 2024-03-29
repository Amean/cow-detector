import 'dart:io';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:cow_detector/utils/cow_detection.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('CowDetector'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.settings,
            ),
            onPressed: () {
              context.go('/settings');
            },
          )
        ],
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () async {
            XFile? ximage =
                await ImagePicker().pickImage(source: ImageSource.gallery);
            File image = File(ximage!.path);
            YOLODetection().detect(image);
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
