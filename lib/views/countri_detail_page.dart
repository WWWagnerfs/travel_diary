import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/travels_controllers.dart';
import 'countri_list_page.dart';

class CountriListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CountriController countriController = Get.put(CountriController());

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: Text('Viagens',style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold))),
      body: Obx(() {
        if (countriController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        if (countriController.countries.isEmpty) {
          return Center(child: Text('SEM DESTINO.'));
        }

        return ListView.builder(
          itemCount: countriController.countries.length,
          itemBuilder: (context, index) {
            final countrie= countriController.countries[index];
            return ListTile(
              leading: Image.network(countrie.flags as String),
              title: Text(countrie.name as String),
              subtitle: Text(countrie.languages as String),
              onTap: () {
                Get.to(() => CountriDetailPage(countri: countrie));
              },
            );
          },
        );
      }),
    );
  }
}