import 'package:custom_painter_clock/constants/theme_data.dart';
import 'package:custom_painter_clock/enums.dart';
import 'package:custom_painter_clock/menu_info.dart';
import 'package:custom_painter_clock/models/alarm_info.dart';

List<MenuInfo> menuItems = [
  MenuInfo(MenuType.clock, title: 'Clock', imageSource: 'assets/clock_icon.png'),
  MenuInfo(MenuType.alarm, title: 'Alarm', imageSource: 'assets/alarm_icon.png'),
  MenuInfo(MenuType.timer, title: 'Alarm', imageSource: 'assets/timer_icon.png'),
  MenuInfo(MenuType.stopwatch, title: 'Stopwatch', imageSource: 'assets/stopwatch_icon.png'),
];

List<AlarmInfo> alarms = [
  AlarmInfo(DateTime.now().add(const Duration(hours: 1)), 
  description: 'Office', gradientColors: GradientColors.sky),
  AlarmInfo(DateTime.now().add(const Duration(hours: 2)), 
  description: 'Sport', gradientColors: GradientColors.sunset),
];