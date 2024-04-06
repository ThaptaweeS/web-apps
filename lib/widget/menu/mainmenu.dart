// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:newmaster/data/global.dart';

// import '../../bloc/BlocEvent/LoginEvent.dart';
// import '../../mainBody.dart';
// import '../../page/page1.dart';
// import '../../page/page2.dart';
// import '../../page/page3.dart';
// import '../../page/page4.dart';
// import '../../page/page5.dart';
// import 'sub_widget.dart';

// // late BuildContext MenuContext;

// class MainMenu extends StatefulWidget {
//   MainMenu({Key? key}) : super(key: key);

//   @override
//   _MainMenuState createState() => _MainMenuState();
// }

// class _MainMenuState extends State<MainMenu> {
//   @override
//   Widget build(BuildContext context) {
//     // MenuContext = context;
//     //---------------------------------------------------------------

//     return Container(
//       height: (MediaQuery.of(context).size.height),
//       width: 250,
//       color: Color.fromARGB(58, 255, 255, 255),
//       child: ListView(
//         children: [
//           Center(
//             child: Data_Menu_mainmenu(),
//           )
//         ],
//       ),
//     );
//   }
// }

// class Data_Menu_mainmenu extends StatefulWidget {
//   @override
//   _DataMenuMainmenuState createState() => _DataMenuMainmenuState();
// }

// class _DataMenuMainmenuState extends State<Data_Menu_mainmenu> {

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center, //Axis-Y
//       crossAxisAlignment: CrossAxisAlignment.center, //Axis-X

//       children: [
//         const SizedBox(
//           height: 20,
//         ),
//         Align(
//             alignment: Alignment.center,
//             child: Container(
//                 height: 120,
//                 width: 200,
//                 color: Color.fromARGB(184, 255, 255, 255),
//                 child: Padding(
//                   padding: const EdgeInsetsDirectional.all(1),
//                   child: Container(
//                     height: 40,
//                     decoration: const BoxDecoration(
//                       color: Color.fromARGB(184, 255, 255, 255),
//                       image: DecorationImage(
//                         image: AssetImage("assets/images/logo_tpk.png"),
//                         fit: BoxFit.fitHeight,
//                       ),
//                     ),
//                   ),
//                 ))),
//         menu_normal(
//           name: "Home",
//           page: Page1(),
//           Lv: 1,
//           icon:"assets/icons/menu_tran.svg",
//         ),
//         menu_normal(
//           name: "History",
//           page: Page2(),
//           Lv: 1,
//         ),
//         menu_normal(
//           name: "Data Input",
//           page: Page3(),
//           Lv: 1,
//         ),
//         menu_normal(
//           name: "Schedule",
//           page: Page4(),
//           Lv: 1,
//         ),
//         menu_normal(
//           name: "Settings",
//           page: Page5(),
//           Lv: 5,
//         ),
//         menu_logout(
//           name: "Logout",
//         ),
//         const Divider(
//           color: Color.fromARGB(77, 255, 255, 255),
//           height: 12,
//         ),ListTile(
//         title: Text("Dark Mode"),
//         textColor: Color.fromARGB(255, 255, 255, 255),
//         trailing: Switch(
//           value: themedark,
//           onChanged: (value) {
//             setState(() {
//               themedark = value; 
//               print(themedark); 
//               // You can also store this value using a preference package
//               // and load it on app startup to maintain the selected theme.
//             });
//           },
//         ),
//       ),        
//       ],
//     );
//   }
// }

// class Logomenu extends StatelessWidget {
//   const Logomenu({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       width: 160,
//       color: Colors.white,

//       child: Padding(
//         padding: const EdgeInsetsDirectional.all(1),
//         child: Container(
//           height: 35,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             image: DecorationImage(
//               image: AssetImage("assets/images/logo_tpk.png"),
//               fit: BoxFit.fitHeight,
//             ),
//           ),
//         ),
//       ),

//       //color: Colors.white,
//     );
//   }
// }

// class menu_logout extends StatelessWidget {
//   menu_logout({Key? key, this.name}) : super(key: key);
//   String? name;

//   @override
//   Widget build(BuildContext context) {
//     String _name = name ?? "";

//     return InkWell(
//       onTap: () {
//         LoginContext.read<Login_Bloc>().add(Logout());
//         // BlocProvider.of<SwPageCubit>(context).togglePage(page);
//         // CuPage = page;
//         // CuPageLV = Lv;
//         // MainBodyContext.read<ChangePage_Bloc>().add(ChangePage());
//       },
//       child: Container(
//         //color: Colors.blue,
//         height: 50,
//         child: Row(
//           children: [
//             SizedBox(
//               width: 15,
//             ),
//             Align(
//               alignment: Alignment.center,
//               child: Container(
//                 height: 24,
//                 width: 24,
//                 child: const Icon(
//                   Icons.logout,
//                   color: Colors.white,
//                   // size: 30.0,
//                 ),
//                 // decoration: BoxDecoration(
//                 //   color: Colors.redAccent.shade400,

//                 //   // image: DecorationImage(
//                 //   //   image: AssetImage(""),
//                 //   //   fit: BoxFit.fitWidth,
//                 //   // ),
//                 //   //borderRadius: BorderRadius.all(Radius.circular(24.0)),
//                 // ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 "   " + _name,
//                 style: const TextStyle(
//                   color: Colors.white,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w300,
//                   fontStyle: FontStyle.normal,
//                   letterSpacing: 0,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
