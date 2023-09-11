import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management/GetX/Localization/localization.dart';
import 'package:state_management/GetX/Localization/localizationPage.dart';
import 'package:state_management/GetX/Reactive/reactiveStateManegement.dart';
import 'package:state_management/GetX/Simple/simpleStateManegement.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Localization(),
      locale: const Locale('tr', 'TR'),  //  Get.deviceLocale, o anki cihazın dilini kullanmak için
      fallbackLocale: const Locale('en', 'US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter State Management'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Get.to(SimpleStateManegement());
                },
                child: const Text("GetX Simple")),
            ElevatedButton(
                onPressed: () {
                  Get.to(ReactiveStateMenegement());
                },
                child: const Text("GetX Reactive")),
            ElevatedButton(
                onPressed: () {
                  Get.to(LocalizationPage());
                },
                child: const Text("GetX Localization")),
          ],
        ),
      ),
    );
  }
}
