import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/countri_model.dart';


class CountriDetailPage extends StatelessWidget {
  final Countri countri;

  CountriDetailPage({required this.countri});

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    try {
      await launchUrl(uri);
    } catch (e) {
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          countri.name as String,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(countri.flags as String),
            SizedBox(height: 10),

            Text(
              countri.name as String,
              style: Theme.of(context).textTheme.titleLarge,
            ),

            Text(
              'by ${countri.name}',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            SizedBox(height: 16),

            Text(countri.region as String),
            SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                print(countri.maps);
                _launchURL(countri.maps);
              },
              child: Text('BOTÃO'),
            ),
          ],
        ),
      ),
    );
  }
}