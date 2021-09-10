import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:working_with_getx/pages/detail/controler/detail_controler.dart';
import 'package:working_with_getx/pages/home/controler/counter_controler.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.find();
    final DetailPageControler d = Get.put(DetailPageControler());
    return Scaffold(
      appBar: AppBar(
        title: Text('DetailPage'),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text("DetailPage: ${c.count}"),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
