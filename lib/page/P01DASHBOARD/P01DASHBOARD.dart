import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/page/page5.dart';
import 'package:newmaster/page/page8.dart';
import 'package:newmaster/page/tank/tank1-backup.dart';
import 'package:newmaster/page/tank/tank10.dart';
import 'package:newmaster/page/tank/tank11.dart';
import 'package:newmaster/page/tank/tank12.dart';
import 'package:newmaster/page/tank/tank13.dart';
import 'package:newmaster/page/tank/tank14.dart';
import 'package:newmaster/page/tank/tank2.dart';
import 'package:newmaster/page/tank/tank3.dart';
import 'package:newmaster/page/tank/tank4.dart';
import 'package:newmaster/page/tank/tank5.dart';
import 'package:newmaster/page/tank/tank6.dart';
import 'package:newmaster/page/tank/tank7.dart';
import 'package:newmaster/page/tank/tank8.dart';
import 'package:newmaster/page/tank/tank9.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../components/my_fields.dart';
import '../../components/storage_details.dart';
import '../../constants.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../../models/MyFiles.dart';
import '../../responsive.dart';
import '../P3TANKMASTER/P3TANKMASTERvar.dart';
import '../page01.dart';
import '../page02.dart';
import '../page3.dart';
import '../tank/Tank9-data/tank9.dart';

class P1DASHBOARDMAIN extends StatefulWidget {
  const P1DASHBOARDMAIN({super.key});

  @override
  State<P1DASHBOARDMAIN> createState() => _P1DASHBOARDMAINState();
}

class _P1DASHBOARDMAINState extends State<P1DASHBOARDMAIN> {
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    // Start the timer immediately
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      // Call fetchStatusAndUpdateColors every 10 seconds
      fetchStatusAndUpdateColors();
      // Call setState to rebuild the UI after data has been updated
      setState(() {});
    });
  }

  @override
  void dispose() {
    // Dispose the timer when the widget is removed from the tree
    _timer?.cancel();
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
            // SizedBox(height: 12),
            // Text(
            //   'Monitoring Dashboard',
            //   style: TextStyle(
            //     fontSize: 16,
            //   ),
            // ),
            SizedBox(height: defaultPadding),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    children: [
                      MyFiles(taptaptap: (v) {
                        if (v.id == 1) {
                          // CuPage = Tank2body();
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank1()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 0;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 2) {
                          // _showPopup(
                          //     context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank1()),
                          // );
                          // CuPage = Tank1();

                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 3) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank3()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 2;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 4) {
                          // _showPopup(
                          //     context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank4()),
                          // );
                          CuPage = Tank1();
                          P3TANKMASTERvar.SelectPage = 3;
                          MainBodyContext.read<ChangePage_Bloc>()
                              .add(ChangePage_nodrower());
                        } else if (v.id == 5) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank5()),
                          // );
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank5()),
                          // );
                          // CuPage = Page5();
                          //  P3TANKMASTERvar.SelectPage = 4;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 6) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank6()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 5;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 7) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank7()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 6;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 8) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank8()),
                          // );
                          // CuPage = Page8();
                          //  P3TANKMASTERvar.SelectPage = 7;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 9) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank9()),
                          // );
                          // CuPage = Tank9();
                          // P3TANKMASTERvar.SelectPage = 8;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 10) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank10()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 9;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 11) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank11()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 10;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 12) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank12()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 11;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 13) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank13()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 12;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        } else if (v.id == 14) {
                          _showPopup(
                              context, " ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => Tank14()),
                          // );
                          // CuPage = Page3();
                          //  P3TANKMASTERvar.SelectPage = 13;
                          // MainBodyContext.read<ChangePage_Bloc>()
                          //     .add(ChangePage_nodrower());
                        }
                      }),
                      // SizedBox(height: defaultPadding),
                      // MyFiles2(taptaptap2: (v) {
                      //   if (v.id == 1) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // CuPage = Tank2body();
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank1()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 0;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 2) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank2()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 1;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 3) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank3()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 2;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 4) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank4()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 3;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 5) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank5()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 4;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 6) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank6()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 5;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 7) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank7()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 6;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 8) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank8()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 7;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   } else if (v.id == 9) {
                      //     _showPopup(
                      //         context, "Tank ${v.title}\n\nยังไม่ได้ลงทะเบียน");
                      //     // Navigator.push(
                      //     //   context,
                      //     //   MaterialPageRoute(builder: (context) => Tank9()),
                      //     // );
                      //     // CuPage = Page3();
                      //     //  P3TANKMASTERvar.SelectPage = 8;
                      //     // MainBodyContext.read<ChangePage_Bloc>()
                      //     //     .add(ChangePage_nodrower());
                      //   }
                      // }),
                      // SizedBox(height: defaultPadding),
                      // if (Responsive.isMobile(context))
                      //   SizedBox(height: defaultPadding),
                      // if (Responsive.isMobile(context)) StorageDetails(),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 10,
                // ),
                // Expanded(
                //   flex: 2,
                //   child: StorageDetails(),
                // ),
                // if (!Responsive.isMobile(context))
                //   SizedBox(width: defaultPadding),
                // // On Mobile means if the screen is less than 850 we don't want to show it
                // if (!Responsive.isMobile(context))
                //   Expanded(
                //     flex: 2,
                //     child: StorageDetails(),
                //   ),
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
