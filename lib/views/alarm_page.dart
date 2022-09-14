import 'package:custom_painter_clock/constants/theme_data.dart';
import 'package:custom_painter_clock/data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 64),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Alarm",
            style: TextStyle(
                fontFamily: "avenir",
                color: CustomColors.primaryTextColor,
                fontWeight: FontWeight.w700,
                fontSize: 24),
          ),
          Expanded(
            child: ListView(
              children: alarms.map<Widget>((alarm) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 32),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  //sheight: 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: alarm.gradientColors.last.withOpacity(0.4),
                          blurRadius: 8,
                          spreadRadius: 2,
                          offset: const Offset(4, 4))
                    ],
                    gradient: LinearGradient(
                        colors: alarm.gradientColors,
                        begin: Alignment.bottomLeft,
                        end: Alignment.centerRight),
                    borderRadius: const BorderRadius.all(Radius.circular(24)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              Icon(
                                Icons.label,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                'Office',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'avenir'),
                              ),
                            ],
                          ),
                          Switch(
                            value: true,
                            onChanged: (bool value) {},
                          ),
                        ],
                      ),
                      const Text(
                        'Mon-Fri',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'avenir'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            '07:00 AM',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'avenir'),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 36,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              }).followedBy([
                DottedBorder(
                  strokeWidth: 3,
                  color: CustomColors.clockOutline,
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(24),
                  dashPattern: const [5, 4],
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: CustomColors.clockBG,
                      borderRadius: const BorderRadius.all(Radius.circular(24)),
                    ),
                    //padding: const EdgeInsets.symmetric(horizontal: 32,
                    //vertical: 16),
                    
                    child: ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 32)),
                   shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(24)),
                ),
              )
                      ),
                      onPressed: () {},
                      child: Column(children: [
                        Image.asset('assets/add_alarm.png',
                        scale: 1.5,),
                        const SizedBox(height: 8,),
                        const Text(
                                'Add Alarm',
                                style: TextStyle(
                                    color: Colors.white, fontFamily: 'avenir'),
                              ),
                      ],),
                    ),
                   ),
                )
              ]).toList(),
            ),
          )
        ],
      ),
    );
  }
}
