import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/ui/controller/user_order.dart';
import 'package:untitled/ui/view/buy_stock.dart';
import 'package:untitled/ui/view/order_details.dart';
class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    final UserOrder userOrder=Get.put(UserOrder());
    return Scaffold(
      body: Obx(() => ListView.builder(
        itemCount: userOrder.orders.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userOrder.orders[index].tradingSymbol),
            subtitle: Text(userOrder.orders[index].orderStatus),
            trailing: IconButton(onPressed: (){
            /*  userOrder.orderDetail(userOrder.orders[index].orderId);
              Get.to(OrderDetails());*/
              Get.to(BuyStock(data: userOrder.orders[index],));
            }, icon: Icon(Icons.arrow_forward)),
          );
        },),)
    );
  }
}
