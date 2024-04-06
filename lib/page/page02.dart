import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/components/recent_files.dart';
import 'package:newmaster/constants.dart';
import 'package:newmaster/page/page01.dart';
import 'package:newmaster/page/page2-data/autofeed-input.dart';
import 'package:newmaster/widget/appbar/AppBar.dart';
import 'package:newmaster/widget/menu/side_menu.dart';
import '../bloc/BlocEvent/ChangePageEvent.dart';
import '../data/global.dart';
import '../mainBody.dart';
import 'page2-data/autofeed-process.dart';
import 'page2-data/feed-history.dart';
import 'page2-data/manual-process-user.dart';
import 'page2-data/manual-process.dart';

late BuildContext Page02Context;

class Page02 extends StatelessWidget {
  const Page02({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Page02Context = context;

    return Page02body();
  }
}

class Page02body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  flex: 6,
                  child: Column(
                    children: [
                      ElevatedButton.icon(
                        onPressed: () {
                          CuPage = Page02Autobody();
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        },
                        icon: Icon(Icons.fact_check_outlined),
                        label: Text('Data Input'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.blue,
                          minimumSize:
                              Size(180, 80), // Set the size of the button
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          CuPage = Manualfeed();
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        },
                        icon: Icon(Icons.fiber_smart_record_outlined),
                        label: Text('Manual Feed'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.orange,
                          minimumSize:
                              Size(180, 80), // Set the size of the button
                        ),
                      ),
                      SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: () {
                          CuPage = FeedHistory();
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        },
                        icon: Icon(Icons.fiber_smart_record_outlined),
                        label: Text('Feed History'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.green,
                          minimumSize:
                              Size(180, 80), // Set the size of the button
                        ),
                      ),
                      SizedBox(height: 16),
                      // ElevatedButton.icon(
                      //   onPressed: () {
                      //     CuPage = ManualfeedUser();
                      //     MainBodyContext.read<ChangePage_Bloc>()
                      //         .add(ChangePage_nodrower());
                      //   },
                      //   icon: Icon(Icons.fiber_smart_record_sharp),
                      //   label: Text('Input Feed'),
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.green,
                      //     onPrimary: Colors.white,
                      //     minimumSize:
                      //         Size(180, 80), // Set the size of the button
                      //   ),
                      // ),
                      // SizedBox(height: 16),
                      // ElevatedButton.icon(
                      //   onPressed: () {
                      //     CuPage = Autofeed();
                      //     MainBodyContext.read<ChangePage_Bloc>()
                      //         .add(ChangePage_nodrower());
                      //   },
                      //   icon: Icon(Icons.motion_photos_auto),
                      //   label: Text('Feed Status'),
                      //   style: ElevatedButton.styleFrom(
                      //     primary: Colors.green,
                      //     onPrimary: Colors.white,
                      //     minimumSize:
                      //         Size(180, 70), // Set the size of the button
                      //   ),
                      // ),
                      // SizedBox(height: defaultPadding),
                      // RecentFiles(),
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

void _showPopup(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(" "),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Close"),
          ),
        ],
      );
    },
  );
}
