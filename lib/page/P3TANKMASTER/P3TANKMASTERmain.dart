import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../data/global.dart';
import '../../mainBody.dart';
import '../page01.dart';
import '../tank/tank1.dart';
import '../tank/tank10.dart';
import '../tank/tank11.dart';
import '../tank/tank12.dart';
import '../tank/tank13.dart';
import '../tank/tank14.dart';
import '../tank/tank2.dart';
import '../tank/tank3.dart';
import '../tank/tank4.dart';
import '../tank/tank5.dart';
import '../tank/tank6.dart';
import '../tank/tank7.dart';
import '../tank/tank8.dart';
import '../tank/tank9.dart';
import 'P3TANKMASTERvar.dart';

class P3TANKMASTERMAIN extends StatefulWidget {
  const P3TANKMASTERMAIN({super.key});

  @override
  State<P3TANKMASTERMAIN> createState() => _P3TANKMASTERMAINState();
}

class _P3TANKMASTERMAINState extends State<P3TANKMASTERMAIN> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    CuPage = Page01();
                    MainBodyContext.read<ChangePage_Bloc>()
                        .add(ChangePage_nodrower());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 5,
                      width: 5,
                      child: Center(
                        // child: Icon(
                        //   Icons.arrow_back_ios_new,
                        //   color: Colors.white,
                        //   size: 18.0,
                        //   semanticLabel:
                        //       'Text to announce in accessibility modes',
                        // ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 1;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank2",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 4;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank5",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 7;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank8",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 8;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank9",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 9;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank10",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 12;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank13",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      P3TANKMASTERvar.SelectPage = 13;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40,
                      width: 50,
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          "Tank14",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView(
            shrinkWrap: true,
            children: [
              if (P3TANKMASTERvar.SelectPage == 0) Tank2BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 1) Tank2BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 2) Tank3body(),
              if (P3TANKMASTERvar.SelectPage == 3) Tank4body(),
              if (P3TANKMASTERvar.SelectPage == 4) Tank5BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 5) Tank6body(),
              if (P3TANKMASTERvar.SelectPage == 6) Tank7body(),
              if (P3TANKMASTERvar.SelectPage == 7) Tank8BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 8) Tank9BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 9) Tank10BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 10) Tank11body(),
              if (P3TANKMASTERvar.SelectPage == 11) Tank12body(),
              if (P3TANKMASTERvar.SelectPage == 12) Tank13BodyPage(),
              if (P3TANKMASTERvar.SelectPage == 13) Tank14BodyPage(),
              if (P3TANKMASTERvar.SelectPage == null) Tank2BodyPage(),
            ],
          ),
        ),
      ],
    );
  }
}
