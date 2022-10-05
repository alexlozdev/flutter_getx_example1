import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller/controller.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Home extends StatelessWidget {
  final controller = Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("counter-1005-9")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*
            GetBuilder<Controller>(
                builder: (_) => Text(
                  'clicks: ${controller.count}',
                )),*/
            Obx(() => Text(
              'clicks: ${controller.count}',
            )),
            ElevatedButton(
              child: Text('Next Route-1005-12'),
              onPressed: () {
                Get.to(Second());
                /*
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context){
                        return Second();
                      },
                    )
                );*/
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}

class Second extends StatelessWidget {
  final Controller ctrl = Get.find();
  @override
  Widget build(context){
    return Scaffold(body: Center(child: Text("${ctrl.count}")));
  }
}