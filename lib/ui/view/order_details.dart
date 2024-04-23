import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../controller/user_order.dart';
class OrderDetails extends StatelessWidget {
  const OrderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final UserOrder userOrder=Get.put(UserOrder());
    return Scaffold(
      body: Obx(() => Center(child: Text(userOrder.orderDetails.toString()))),
    );
  }
}
