import 'package:flutter/material.dart';

class AlarmPage extends StatefulWidget {
  AlarmPage({super.key});

  @override
  State<AlarmPage> createState() => _AlarmPageState();
}

class _AlarmPageState extends State<AlarmPage> {
  @override
  Widget build(BuildContext context) {
    bool isOn = false;
    var index = 0;
    var arrTimeline = ['Mon-fri', 'Today', 'Friday', 'Monday', 'Tomorrow'];
    var arrTime = ['8:20', '11:00', '13:50', '6:40', '5:10'];
    return Stack(
      children: [
        Container(color: Color(0xff161618)),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  elevation: 10,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xff212124),
                    ),
                    height: 100,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 22,
                            width: double.infinity,
                            child: Text(
                              arrTimeline[index],
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 43,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  arrTime[index],
                                  style: TextStyle(
                                    fontSize: 37,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Switch(
                                  value: isOn,
                                  onChanged: (value) {
                                    setState(() {
                                      isOn = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: arrTimeline.length,
            ),
          ),
        ),
      ],
    );
  }
}
