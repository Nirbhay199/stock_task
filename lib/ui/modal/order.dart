class order {
  String? dhanClientId;
  String? orderId;
  String? exchangeOrderId;
  String? correlationId;
  String? orderStatus;
  String? transactionType;
  String? exchangeSegment;
  String? productType;
  String? orderType;
  String? validity;
  String? tradingSymbol;
  String? securityId;
  var quantity;
  var disclosedQuantity;
  var price;
  var triggerPrice;
  bool? afterMarketOrder;
  var boProfitValue;
  var boStopLossValue;
  String? legName;
  String? createTime;
  String? updateTime;
  String? exchangeTime;
  String? drvExpiryDate;
  String? drvOptionType;
  var drvStrikePrice;
  String? omsErrorCode;
  String? omsErrorDescription;
  var filledQty;
  String? algoId;

  order(
      {this.dhanClientId,
        this.orderId,
        this.exchangeOrderId,
        this.correlationId,
        this.orderStatus,
        this.transactionType,
        this.exchangeSegment,
        this.productType,
        this.orderType,
        this.validity,
        this.tradingSymbol,
        this.securityId,
        this.quantity,
        this.disclosedQuantity,
        this.price,
        this.triggerPrice,
        this.afterMarketOrder,
        this.boProfitValue,
        this.boStopLossValue,
        this.legName,
        this.createTime,
        this.updateTime,
        this.exchangeTime,
        this.drvExpiryDate,
        this.drvOptionType,
        this.drvStrikePrice,
        this.omsErrorCode,
        this.omsErrorDescription,
        this.filledQty,
        this.algoId});

  order.fromJson(Map<String, dynamic> json) {
    dhanClientId = json['dhanClientId'];
    orderId = json['orderId'];
    exchangeOrderId = json['exchangeOrderId'];
    correlationId = json['correlationId'];
    orderStatus = json['orderStatus'];
    transactionType = json['transactionType'];
    exchangeSegment = json['exchangeSegment'];
    productType = json['productType'];
    orderType = json['orderType'];
    validity = json['validity'];
    tradingSymbol = json['tradingSymbol'];
    securityId = json['securityId'];
    quantity = json['quantity'];
    disclosedQuantity = json['disclosedQuantity'];
    price = json['price'];
    triggerPrice = json['triggerPrice'];
    afterMarketOrder = json['afterMarketOrder'];
    boProfitValue = json['boProfitValue'];
    boStopLossValue = json['boStopLossValue'];
    legName = json['legName'];
    createTime = json['createTime'];
    updateTime = json['updateTime'];
    exchangeTime = json['exchangeTime'];
    drvExpiryDate = json['drvExpiryDate'];
    drvOptionType = json['drvOptionType'];
    drvStrikePrice = json['drvStrikePrice'];
    omsErrorCode = json['omsErrorCode'];
    omsErrorDescription = json['omsErrorDescription'];
    filledQty = json['filled_qty'];
    algoId = json['algoId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dhanClientId'] = this.dhanClientId;
    data['orderId'] = this.orderId;
    data['exchangeOrderId'] = this.exchangeOrderId;
    data['correlationId'] = this.correlationId;
    data['orderStatus'] = this.orderStatus;
    data['transactionType'] = this.transactionType;
    data['exchangeSegment'] = this.exchangeSegment;
    data['productType'] = this.productType;
    data['orderType'] = this.orderType;
    data['validity'] = this.validity;
    data['tradingSymbol'] = this.tradingSymbol;
    data['securityId'] = this.securityId;
    data['quantity'] = this.quantity;
    data['disclosedQuantity'] = this.disclosedQuantity;
    data['price'] = this.price;
    data['triggerPrice'] = this.triggerPrice;
    data['afterMarketOrder'] = this.afterMarketOrder;
    data['boProfitValue'] = this.boProfitValue;
    data['boStopLossValue'] = this.boStopLossValue;
    data['legName'] = this.legName;
    data['createTime'] = this.createTime;
    data['updateTime'] = this.updateTime;
    data['exchangeTime'] = this.exchangeTime;
    data['drvExpiryDate'] = this.drvExpiryDate;
    data['drvOptionType'] = this.drvOptionType;
    data['drvStrikePrice'] = this.drvStrikePrice;
    data['omsErrorCode'] = this.omsErrorCode;
    data['omsErrorDescription'] = this.omsErrorDescription;
    data['filled_qty'] = this.filledQty;
    data['algoId'] = this.algoId;
    return data;
  }
}