import 'dart:async';
import 'package:flutter/services.dart';

class FlutterTsc {
  static const MethodChannel _channel = const MethodChannel('flutter_tsc');
  static Future<String> inbound({
    required String ipAddress,
    required String lot,
    required String product,
    required String number,
    String? purchaseUom,
    required String uom,
    required String uomQty,
    String? printedName,
    required String done,
    required String origin,
    required String contact,
    required String expiryDate,
    required String currentDate,
    required String location,
    required String staffId,
    required String productCode,
  }) async {
    final String result = await _channel.invokeMethod('inbound', {
      'ipAddress': ipAddress,
      'lot': lot,
      'product': product,
      'number': number,
      'purchaseUom': purchaseUom,
      'uom': uom,
      'uomQty': uomQty,
      'printedName': printedName,
      'done': done,
      'origin': origin,
      'contact': contact,
      'expiryDate': expiryDate,
      'currentDate': currentDate,
      'location': location,
      'staffId': staffId,
      'productCode': productCode,
    });
    return result;
  }

  static Future<String> outbound({
    required String ipAddress,
    required String label,
    required String product,
    required String qtyDone,
    required String expireDate,
    required String packDate,
    required String invoice,
    required String po,
    required String customer,
    required String outlet,
    required String number,
    required String ref,
    required String internalNote,
  }) async {
    final String result = await _channel.invokeMethod('outbound', {
      'ipAddress': ipAddress,
      'label': label,
      'product': product,
      'qtyDone': qtyDone,
      'expireDate': expireDate,
      'packDate': packDate,
      'invoice': invoice,
      'po': po,
      'customer': customer,
      'outlet': outlet,
      'number': number,
      'ref': ref,
      'internalNote': internalNote,
    });
    return result;
  }
}
