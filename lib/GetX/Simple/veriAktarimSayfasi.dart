import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/GetX/Simple/simpleStateController.dart';

class VeriAktarimSayfasi extends StatelessWidget {
  VeriAktarimSayfasi({super.key});
  final SimpleStateController controller = Get.find();

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
