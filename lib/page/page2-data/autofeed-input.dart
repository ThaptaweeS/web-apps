import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/components/recent_files.dart';
import 'package:newmaster/constants.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/mainBody.dart';
import 'package:newmaster/page/page02.dart';
import 'package:newmaster/page/page2-data/autofeed-input2.dart';
import 'package:newmaster/widget/appbar/AppBar.dart';
import 'package:newmaster/widget/menu/side_menu.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';
import 'autofeed-input3.dart';
import 'autofeed-input4.dart';
import 'autofeed-input5.dart';

late BuildContext Page02AutoContext;

class Page02Auto extends StatelessWidget {
  const Page02Auto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Page02AutoContext = context;

    return Page02Autobody();
  }
}

class Page02Autobody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            CuPage = Page02body();
            MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());

            // Handle back button click
          },
        ),
        title: Text("Select Time"),
        actions: [],
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                CuPage = Page022Autobody();
                MainBodyContext.read<ChangePage_Bloc>()
                    .add(ChangePage_nodrower());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Set background color
              ),
              child: Row(
                children: [
                  Icon(Icons.access_time), // Set icon
                  SizedBox(
                    width: 100,
                    height: 70,
                  ), // Add space between icon and text
                  Text("01:00"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                CuPage = Page033Autobody();
                MainBodyContext.read<ChangePage_Bloc>()
                    .add(ChangePage_nodrower());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Set background color
              ),
              child: Row(
                children: [
                  Icon(Icons.timer), // Set icon
                  SizedBox(
                    width: 100,
                    height: 70,
                  ), // Add space between icon and text
                  Text("07:00"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                 CuPage = Page044Autobody();
                MainBodyContext.read<ChangePage_Bloc>()
                    .add(ChangePage_nodrower());
                // Handle button 3 click
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Set background color
              ),
              child: Row(
                children: [
                  Icon(Icons.alarm), // Set icon
                  SizedBox(
                    width: 100,
                    height: 70,
                  ), // Add space between icon and text
                  Text("13:00"),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                  CuPage = Page055Autobody();
                MainBodyContext.read<ChangePage_Bloc>()
                    .add(ChangePage_nodrower());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Set background color
              ),
              child: Row(
                children: [
                  Icon(Icons.schedule), // Set icon
                  SizedBox(
                    width: 100,
                    height: 70,
                  ), // Add space between icon and text
                  Text("19:00"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
