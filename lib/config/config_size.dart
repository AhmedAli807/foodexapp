
import 'package:flutter/material.dart';

class ConfigSize {
  static double heightScreen(BuildContext context)=>MediaQuery.of(context).size.height;
  static double weightScreen(BuildContext context)=>MediaQuery.of(context).size.width;

}