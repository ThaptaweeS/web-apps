import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/bloc/BlocEvent/ChangePageEvent.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/mainBody.dart';
import 'package:newmaster/page/page2-data/autofeed-input.dart';
import 'package:newmaster/constants.dart';
import 'package:newmaster/page/tank/tank9-data/layout-chart.dart';
import 'package:newmaster/responsive.dart';
import '../../P01DASHBOARD/P01DASHBOARD.dart';
import '../tank9.dart';

late BuildContext Tank9Context;
late BuildContext Page02Context;

class Tank9 extends StatelessWidget {
  const Tank9({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Tank9Context = context;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              CuPage = P1DASHBOARDMAIN();
              MainBodyContext.read<ChangePage_Bloc>()
                  .add(ChangePage_nodrower());

              // Handle back button click
            },
          ),
        ),
        body: Tank9Body());
  }
}

class Tank9Body extends StatefulWidget {
  const Tank9Body({super.key});

  @override
  State<Tank9Body> createState() => _P1DASHBOARDMAINState2();
}

class _P1DASHBOARDMAINState2 extends State<Tank9Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                _showTextPopup(context);
              },
              child: ListTile(
                leading: Icon(
                  Icons.storage,
                  size: 24.0,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                title: Text(
                  'Zinc Phosphate (6700L) : Dashboard',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // SizedBox(height: defaultPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Chart13(),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Chart133(),
                ),
                SizedBox(width: defaultPadding),
              ],
            ),
            // SizedBox(height: defaultPadding), // Add space between the rows
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Chart21(),
                      // SizedBox(height: defaultPadding),
                      if (Responsive.isMobile(context))
                        // SizedBox(height: defaultPadding),
                        if (Responsive.isMobile(context)) Chart21(),
                    ],
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 140,
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          CuPage = Page02Autobody();
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        },
                        icon: Icon(Icons.add_to_photos_outlined),
                        label: Text('Data Input'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 175, 184, 38),
                          minimumSize:
                              Size(120, 60), // Set the size of the button
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      ElevatedButton.icon(
                          onPressed: () {
                            CuPage = Tank9BodyPage();
                            MainBodyContext.read<ChangePage_Bloc>()
                                .add(ChangePage_nodrower());
                          },
                          icon: Icon(Icons.fact_check_outlined),
                          label: Text('Data History'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Color.fromARGB(255, 15, 161, 130),
                            minimumSize:
                                Size(120, 60), // Set the size of the button
                          )),
                    ],
                  ),
                ),
                // Add more widgets as needed
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _showTextPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Detail'),
        content: Text(
            'Process : Fine Cleaner \nTank Capacity : 6000 Litters \nChemicals : FC-4360 \n:: Replenishing :: \nFC-4360= 6.6 kgs./1 pt\n FAl increase (1.1 g/l)\nFrequency of Checking : 4 Times/day ',
            style: TextStyle(fontSize: 13.0)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}
