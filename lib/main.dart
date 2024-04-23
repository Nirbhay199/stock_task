import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:untitled/storage/app_storage.dart';
import 'package:untitled/ui/view/order_listing.dart';
void main() async{
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  // print(box.read("token").toString());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: ScreenOne(),
    );
  }
}
