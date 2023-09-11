import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/GetX/Reactive/reactiveVeriAktarimi.dart';
import 'package:state_management/GetX/Reactive/reaktiveStateController.dart';

class ReactiveStateMenegement extends StatelessWidget {
  ReactiveStateMenegement({super.key});
  final ReactiveStateController controller = Get.put(ReactiveStateController());

  @override
  Widget build(BuildContext context) {
    print("ReactiveStateManegement build !!!!");
    return Scaffold(
      appBar: AppBar(title: Text("Reactive")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            heroTag: 'fab1',
            onPressed: () {
              Get.to(ReactiveVeriAktarimSayfasi());
            
            },
            child: const Icon(Icons.navigate_next),
          ),
          FloatingActionButton(
            heroTag: 'fab2',
            onPressed: () => controller.increment(),
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: Center(
        child: Obx(() => Text(
              controller.count.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            )),
      ),
    );
  }
}
