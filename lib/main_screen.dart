import 'package:flutter/material.dart';
import 'package:clock_app/pages/alarm_page.dart';
import 'package:clock_app/pages/bedtime_page.dart';
import 'package:clock_app/pages/stopwatch_page.dart';
import 'package:clock_app/pages/timers_page.dart';
import 'package:clock_app/pages/world_clock_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyMainScreen extends StatefulWidget {
  const MyMainScreen({super.key});

  @override
  State<MyMainScreen> createState() => _MyMainScreenState();
}

class _MyMainScreenState extends State<MyMainScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    AlarmPage(),
    WorldClockPage(),
    TimersPage(),
    StopWatchPage(),
    BedtimePage(),
  ];

  final List<String> titles = [
    'Alarms',
    'World clock',
    'Timers',
    'Stopwatch',
    'Bedtime',
  ];

  final List<IconData> icons = [
    FontAwesomeIcons.clock,
    FontAwesomeIcons.globe,
    FontAwesomeIcons.hourglassHalf,
    FontAwesomeIcons.stopwatch,
    FontAwesomeIcons.bed,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        toolbarHeight: 50,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 19),
              child: Text(
                titles[currentIndex],
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert_sharp, color: Colors.white),
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
      extendBodyBehindAppBar: true,
      floatingActionButton: (currentIndex == 0 || currentIndex == 1)
          ? Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                height: 70,
                width: 70,
                child: FloatingActionButton(
                  elevation: 0,
                  backgroundColor: Color(0xff412e41),
                  onPressed: () {},
                  child: Icon(Icons.add, color: Colors.white, size: 30),
                ),
              ),
            )
          : null,
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff212124),
        height: 55,
        padding: EdgeInsetsGeometry.only(left: 0, right: 0, top: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(5, (index) {
            return SizedBox(
              width: 77,
              child: InkWell(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  children: [
                    FaIcon(icons[index], size: 20, color: Colors.white),
                    SizedBox(height: 3),
                    Text(
                      titles[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
