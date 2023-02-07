import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

//membuat class baru bernama HomePage
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ///sebenarnya memunculkan dialog menggunakan GETX ada beberapa cara
            ///disini saya menggunakan 3 cara

            //ini adalah cara pertama alias yang manual, tanpa menggunakan GETX

            // showDialog(
            //   context: context,
            //   builder: (context) => AlertDialog(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     title: Text('Hello'),
            //     content: Text('Ini adalah dialog'),
            //     actions: [
            //       ElevatedButton(
            //         onPressed: () {},
            //         child: Text('DONE'),
            //       ),
            //       ElevatedButton(
            //         onPressed: () {},
            //         child: Text('CANCEL'),
            //       )
            //     ],
            //   ),
            // );

            // ini adalah cara kedua, cara ini menggunakan GETX

            Get.defaultDialog(
                title: 'Hello',
                content: Text('Ini adalah sebuah dialog'),
                radius: 5,
                // cancel: ElevatedButton(onPressed: () {}, child: Text('CANCEL')),
                // confirm: ElevatedButton(onPressed: () {}, child: Text('CONFIRM')),
                actions: [
                  ElevatedButton(onPressed: () {}, child: Text('CONFIRM')),
                  ElevatedButton(onPressed: () {}, child: Text('CANCEL')),
                ]);

            // dan ini cara ketiga atau yang terakhir

            // Get.dialog(
            //   AlertDialog(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(20),
            //     ),
            //     title: Text('Hello'),
            //     content: Text('Ini adalah dialog'),
            //     actions: [
            //       ElevatedButton(
            //         onPressed: () {},
            //         child: Text('DONE'),
            //       ),
            //       ElevatedButton(
            //         onPressed: () {},
            //         child: Text('CANCEL'),
            //       )
            //     ],
            //   ),
            // );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
