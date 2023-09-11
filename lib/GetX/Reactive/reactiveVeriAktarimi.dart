import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/GetX/Reactive/reaktiveStateController.dart';

class ReactiveVeriAktarimSayfasi extends StatelessWidget {
  ReactiveVeriAktarimSayfasi({super.key});
  final ReactiveStateController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        controller.count.toString(),
        style: Theme.of(context).textTheme.headlineMedium,
      )),
    );
  }
}
