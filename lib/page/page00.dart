import 'package:flutter/material.dart';
import 'package:newmaster/components/my_fields.dart';
import 'package:newmaster/components/recent_files.dart';
import 'package:newmaster/components/storage_details.dart';
import 'package:newmaster/responsive.dart';
import 'package:newmaster/widget/appbar/AppBar.dart';
import 'package:newmaster/widget/menu/side_menu.dart';

import '../constants.dart';
import 'P01DASHBOARD/P01DASHBOARD0.dart';

late BuildContext Page00Context;

class Page00 extends StatelessWidget {
  const Page00({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Page00Context = context;

    return Page00body();
  }
}

class Page00body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return P1DASHBOARDMAIN0();}
}
