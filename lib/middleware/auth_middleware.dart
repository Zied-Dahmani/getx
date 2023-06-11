
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware{

  @override
  RouteSettings? redirect(String? route)
  {
    //if()
    return RouteSettings(name:"/home2");
  }
}