import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/GetX/Simple/simpleStateController.dart';
import 'package:state_management/GetX/Simple/veriAktarimSayfasi.dart';

class SimpleStateManegement extends StatelessWidget {
  SimpleStateManegement({super.key});
  final controller = Get.put(SimpleStateController());

  @override
  Widget build(BuildContext context) {
    print("SimpleStateManegement build !!!!");
    return Scaffold(
      appBar: AppBar(title: Text("Simple")),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        
             FloatingActionButton(
              heroTag:'fab1' ,
              onPressed: () {
                Get.to(VeriAktarimSayfasi());
             
              },
              child: Icon(Icons.navigate_next),
            ),
         
          
             FloatingActionButton(
              heroTag:'fab2' ,
              onPressed: () => controller.increment(),
              child: Icon(Icons.add),
            ),
   
        ],
      ),
      body: Center(
        child: GetBuilder<SimpleStateController>(builder: (_) {
          print("SimpleStateManegement text build");
          return Text(
            controller.count.toString(),
            style: Theme.of(context).textTheme.headlineMedium,
          );
        }),
      ),
    );
  }
}
