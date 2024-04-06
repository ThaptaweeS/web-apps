import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/components/recent_files.dart';
import 'package:newmaster/constants.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/mainBody.dart';
import 'package:newmaster/page/page02.dart';
import 'package:newmaster/page/page2-data/autofeed-input.dart';
import 'package:newmaster/widget/appbar/AppBar.dart';
import 'package:newmaster/widget/menu/side_menu.dart';
import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../bloc/cubit/NotificationEvent.dart';

late BuildContext Page022AutoContext;

class Page02Tank2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
        
            CuPage = Page02Autobody();
            MainBodyContext.read<ChangePage_Bloc>().add(ChangePage_nodrower());
          },
        ),
       
    ),
    );
  }
}

