import 'dart:async';

import 'package:newmaster/models/MyFiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class FileInfoCard extends StatefulWidget {
  FileInfoCard({
    Key? key,
    this.tapping,
    required this.info,
  }) : super(key: key);

  final CloudStorageInfo info;
  Function(String)? tapping;

  @override
  _FileInfoCardState createState() => _FileInfoCardState();
}

class _FileInfoCardState extends State<FileInfoCard> {
  late Color iconColor;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    iconColor = Colors.black;
    timer = Timer.periodic(Duration(milliseconds: 700), (timer) {
      setState(() {
        iconColor = ((iconColor == const Color.fromARGB(40, 158, 158, 158))
            ? widget.info.color2
            : Color.fromARGB(40, 158, 158, 158))!;
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.tapping?.call("tapping");
      },
      child: Container(
        padding: EdgeInsets.all(defaultPadding ?? 16.0),
        decoration: BoxDecoration(
          color: secondaryColor ??
              Colors.blue, // Define secondaryColor or pass it as a parameter
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all((defaultPadding ?? 8.0) * 0.55),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: widget.info.color?.withOpacity(0.1) ??
                        Colors.transparent,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: widget.info.svgSrc != null
                      ? SvgPicture.asset(
                          widget.info.svgSrc!,
                          colorFilter: ColorFilter.mode(
                              widget.info.color ?? Colors.black,
                              BlendMode.srcIn),
                        )
                      : SizedBox(
                          height:
                              defaultPadding), // Handle case where svgSrc is null
                ),
                Icon(Icons.circle, color: iconColor),
              ],
            ),
            Text(
              widget.info.title ?? '',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15, // Set a fixed font size here
                // You can also specify other text properties if needed
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(255, 255, 255, 255),
                // Add other text properties as needed
              ),
            ),
            ProgressLine(
              color: widget.info.color,
              percentage: widget.info.percentage,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.info.totalStorage ?? '',
                  style: TextStyle(
                    fontSize: 13, // Set a fixed font size here
                    // You can also specify other text properties if needed
                    fontWeight: FontWeight.normal,
                    color: Color.fromARGB(255, 235, 255, 157),
                    // Add other text properties as needed
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

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    Key? key,
    this.color = primaryColor,
    required this.percentage,
  }) : super(key: key);

  final Color? color;
  final int? percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 5,
          decoration: BoxDecoration(
            color: color!.withOpacity(0.1),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) => Container(
            width: constraints.maxWidth * (percentage! / 100),
            height: 2,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ],
    );
  }
}

// class FileInfoCard2 extends StatefulWidget {
//   FileInfoCard2({
//     Key? key,
//     this.tapping2,
//     required this.info,
//   }) : super(key: key);

//   final CloudStorageInfo2 info;
//   Function(String)? tapping2;

//   @override
//   _FileInfoCardState2 createState() => _FileInfoCardState2();
// }

// class _FileInfoCardState2 extends State<FileInfoCard2> {
//   late Color iconColor;
//   late Timer timer;

//   @override
//   void initState() {
//     super.initState();
//     iconColor = Colors.black;
//     timer = Timer.periodic(Duration(milliseconds: 700), (timer) {
//       setState(() {
//         iconColor = ((iconColor == const Color.fromARGB(40, 158, 158, 158)) ? widget.info.color2 : Color.fromARGB(40, 158, 158, 158))!;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         widget.tapping2?.call("tapping2");
//       },
//       child: Container(
//         padding: EdgeInsets.all(defaultPadding ?? 16.0),
//         decoration: BoxDecoration(
//           color: secondaryColor ??
//               Colors.blue, // Define secondaryColor or pass it as a parameter
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all((defaultPadding ?? 16.0) * 0.55),
//                   height: 80,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: widget.info.color?.withOpacity(0.1) ??
//                         Colors.transparent,
//                     borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   ),
//                   child: widget.info.svgSrc != null
//                       ? SvgPicture.asset(
//                           widget.info.svgSrc!,
//                           colorFilter: ColorFilter.mode(
//                               widget.info.color ?? Colors.black,
//                               BlendMode.srcIn),
//                         )
//                       : SizedBox(), // Handle case where svgSrc is null
//                 ),
//                 Icon(Icons.circle, color: iconColor),
//               ],
//             ),
//             Text(
//               widget.info.title ?? '',
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: Theme.of(context).textTheme.bodyText2,
//             ),
//             ProgressLine(
//               color: widget.info.color,
//               percentage: widget.info.percentage,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   widget.info.totalStorage ?? '',
//                   style: Theme.of(context).textTheme.bodyText1,
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProgressLine2 extends StatelessWidget {
//   const ProgressLine2({
//     Key? key,
//     this.color = primaryColor,
//     required this.percentage,
//   }) : super(key: key);

//   final Color? color;
//   final int? percentage;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: 5,
//           decoration: BoxDecoration(
//             color: color!.withOpacity(0.1),
//             borderRadius: BorderRadius.all(Radius.circular(10)),
//           ),
//         ),
//         LayoutBuilder(
//           builder: (context, constraints) => Container(
//             width: constraints.maxWidth * (percentage! / 100),
//             height: 2,
//             decoration: BoxDecoration(
//               color: color,
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FileInfoCard2 extends StatelessWidget {
//   FileInfoCard2({
//     Key? key,
//     this.tapping2,
//     required this.info,
//   }) : super(key: key);

//   final CloudStorageInfo2 info;
//   Function(String)? tapping2;

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         if (tapping2 != null) {
//           tapping2!("tapping2");
//         }
//       },
//       child: Container(
//         padding: EdgeInsets.all(defaultPadding),
//         decoration: BoxDecoration(
//           color: secondaryColor,
//           borderRadius: const BorderRadius.all(Radius.circular(10)),
//         ),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(defaultPadding * 0.55),
//                   height: 80,
//                   width: 80,
//                   decoration: BoxDecoration(
//                     color: info.color!.withOpacity(0.1),
//                     borderRadius: const BorderRadius.all(Radius.circular(10)),
//                   ),
//                   child: SvgPicture.asset(
//                     info.svgSrc!,
//                     colorFilter: ColorFilter.mode(
//                         info.color ?? Colors.black, BlendMode.srcIn),
//                   ),
//                 ),
//                 Icon(Icons.circle, color: info.color2)
//               ],
//             ),
//             Text(
//               info.title!,
//               maxLines: 1,
//               overflow: TextOverflow.ellipsis,
//               style: TextStyle(fontSize: 14),
//             ),
//             ProgressLine2(
//               color: info.color,
//               percentage: info.percentage,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Text(
//                 //   "${info.numOfFiles} ",
//                 //   style: Theme.of(context)
//                 //       .textTheme
//                 //       .bodySmall!
//                 //       .copyWith(color: Colors.white70),
//                 // ),
//                 Text(
//                   info.totalStorage!,
//                   style: Theme.of(context)
//                       .textTheme
//                       .bodySmall!
//                       .copyWith(color: Colors.white),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class ProgressLine2 extends StatelessWidget {
//   const ProgressLine2({
//     Key? key,
//     this.color = primaryColor,
//     required this.percentage,
//   }) : super(key: key);

//   final Color? color;
//   final int? percentage;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           width: double.infinity,
//           height: 5,
//           decoration: BoxDecoration(
//             color: color!.withOpacity(0.1),
//             borderRadius: BorderRadius.all(Radius.circular(10)),
//           ),
//         ),
//         LayoutBuilder(
//           builder: (context, constraints) => Container(
//             width: constraints.maxWidth * (percentage! / 100),
//             height: 2,
//             decoration: BoxDecoration(
//               color: color,
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
