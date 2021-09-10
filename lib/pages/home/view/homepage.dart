import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:working_with_getx/pages/detail/view/detail.dart';
import 'package:working_with_getx/pages/home/controler/counter_controler.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => Text(
                  "${c.name} ${c.count}",
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.red,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  Get.to(DetailPage());
                },
                label: Text("Detail Page"),
              ),
              SizedBox(
                height: 10,
              ),
              FloatingActionButton.extended(
                onPressed: () {
                  c.increment();
                },
                label: Text("Increase Number"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
