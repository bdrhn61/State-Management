import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocalizationPage extends StatelessWidget {
  const LocalizationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("hello".tr)),
    );
  }
}
