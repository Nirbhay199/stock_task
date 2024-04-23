import 'dart:convert';

import 'package:get/get.dart';
import 'package:untitled/ui/modal/order.dart';

import '../services/api.dart';

class UserOrder extends GetxController{
  var orders=[].obs;
  var orderDetails={}.obs;
  @override
  void onInit() async{
    // TODO: implement onInit
    super.onInit();
    Future.delayed(Duration(seconds: 1)).then((value) => getOrderList());
  }

getOrderList()async{
  var response=await Api().getOrder();
  response=response.body;
  response.forEach((json){
    orders.add(order.fromJson(json));
  });
}
  orderDetail(order_id)async{
    var response=await Api().getOrderWithId(order_id);
    orderDetails.value=response.body;
  }


  buyStock(body)async{
    print(body);
    var response=await Api().buy(body);
    print(response.body);
  }

}