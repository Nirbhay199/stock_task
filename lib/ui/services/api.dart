import 'package:get/get.dart';

import '../../storage/app_storage.dart';

class Api extends GetConnect{
  var headers={
  "access-token":box.read("token").toString()
  };
  getOrder()async {
    return await get("https://api.dhan.co/orders",headers: headers);
  }
  getOrderWithId(order_id)async {
    return await get("https://api.dhan.co/orders/{$order_id}",headers: headers);
  }


  buy(body)async {
    return await post("https://api.dhan.co/orders",body,headers: headers);
  }

}