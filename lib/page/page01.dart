import 'package:flutter/material.dart';
import 'package:newmaster/components/my_fields.dart';
import 'package:newmaster/components/recent_files.dart';
import 'package:newmaster/components/storage_details.dart';
import 'package:newmaster/responsive.dart';
import 'package:newmaster/widget/appbar/AppBar.dart';
import 'package:newmaster/widget/menu/side_menu.dart';

import '../constants.dart';
import 'P01DASHBOARD/P01DASHBOARD.dart';

late BuildContext Page01Context;

class Page01 extends StatelessWidget {
  const Page01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Page01Context = context;

    return Page01body();
  }
}

class Page01body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return P1DASHBOARDMAIN();}
}
