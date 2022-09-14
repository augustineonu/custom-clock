import 'package:custom_painter_clock/enums.dart';
import 'package:flutter/cupertino.dart';

class MenuInfo extends ChangeNotifier{
  MenuType menuType;
  String title;
  String imageSource;

  MenuInfo(this.menuType, {required this.title, required this.imageSource});

  updateMenu(MenuInfo menuInfo) {
    this.menuType = menuInfo.menuType;
    this.title = menuInfo.title;
    this.imageSource = menuInfo.imageSource;

    //notify all the consumers
    notifyListeners();

  }
}