import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:untitled/ui/modal/order.dart';

import '../controller/user_order.dart';
class BuyStock extends StatelessWidget {
  final order data;
  const BuyStock({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _controller=TextEditingController();
    final UserOrder userOrder=Get.put(UserOrder());
    return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: TextField(
               controller: _controller,
                keyboardType: TextInputType.number,
               decoration: const InputDecoration(
                 border: OutlineInputBorder()
               ),

             ),
           ),
           TextButton(onPressed: (){
             userOrder.buyStock({
               "dhanClientId":data.dhanClientId ,
               "correlationId": data.correlationId,
               "transactionType": "BUY",
               "exchangeSegment": "NSE_EQ",
               "productType": "INTRADAY",
               "orderType": "MARKET",
               "validity": "DAY",
               "tradingSymbol": "YESBANK",
               "securityId": data.securityId,
               "quantity": _controller.text,
               "disclosedQuantity": 0,
             });

           }, child: const Text("Buy"))
         ],
       ),
     ),
    );
  }
}
