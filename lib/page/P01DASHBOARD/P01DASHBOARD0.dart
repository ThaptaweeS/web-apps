import 'dart:async';
import 'package:flutter/material.dart';
import '../../components/my_fields0.dart';
import '../../constants.dart';
import '../../models/MyFiles.dart';

class P1DASHBOARDMAIN0 extends StatefulWidget {
  const P1DASHBOARDMAIN0({super.key});
  @override
  State<P1DASHBOARDMAIN0> createState() => _P1DASHBOARDMAIN0State();
}

class _P1DASHBOARDMAIN0State extends State<P1DASHBOARDMAIN0> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      fetchStatusAndUpdateColors();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  Widget build(BuildContext context) {
    fetchStatusAndUpdateColors();
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
