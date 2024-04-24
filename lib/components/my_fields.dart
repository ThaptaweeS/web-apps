import 'dart:async';

import 'package:flutter/material.dart';
import 'package:newmaster/components/storage_details.dart';
import 'package:newmaster/models/MyFiles.dart';
import 'package:newmaster/responsive.dart';
import 'package:newmaster/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'file_info_card.dart';

class MyFiles extends StatefulWidget {
  MyFiles({
    Key? key,
    this.taptaptap,
  }) : super(key: key);
  Function(CloudStorageInfo)? taptaptap;

  @override
  _MyFilesState createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  late CloudStorageInfo? _selectedFileInfo;
  late List<Map<String, dynamic>> tableData = [];
  late Timer _timer; // Timer variable

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  "Select Tank",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                SizedBox(width: 25), // Add spacing between text and icons
                CircleAvatar(
                  backgroundColor:
                      Colors.green, // Customize the color of the circle icon
                  radius: 10, // Customize the size of the circle icon
                ),
                SizedBox(width: 5),
                Text(
                  "Pass",
                  style: TextStyle(
                    fontSize: 11, // Set the desired font size here
                    // You can also customize other text properties here if needed
                  ),
                ),
                SizedBox(width: 15), // Add spacing between circle icons
                CircleAvatar(
                  backgroundColor:
                      Colors.orange, // Customize the color of the circle icon
                  radius: 10, // Customize the size of the circle icon
                ),
                SizedBox(width: 5),
                Text(
                  "Waiting Check",
                  style: TextStyle(
                    fontSize: 11, // Set the desired font size here
                    // You can also customize other text properties here if needed
                  ),
                ),
                SizedBox(width: 15),
                CircleAvatar(
                  backgroundColor:
                      Colors.red, // Customize the color of the circle icon
                  radius: 10, // Customize the size of the circle icon
                ),
                SizedBox(width: 5),
                Text(
                  "NG Value",
                  style: TextStyle(
                    fontSize: 11, // Set the desired font size here
                    // You can also customize other text properties here if needed
                  ),
                )
                // Add more CircleAvatar widgets as needed
              ],
            ),
          ],
        ),
        SizedBox(height: defaultPadding),
        Responsive(
          mobile: FileInfoCardGridView(
            taptap: widget.taptaptap,
            crossAxisCount: _size.width < 650 ? 2 : 4,
            childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
          ),
          tablet: FileInfoCardGridView(
            taptap: widget.taptaptap,
          ),
          desktop: FileInfoCardGridView(
            taptap: widget.taptaptap,
            childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
          ),
        ),
      ],
    );
  }
}

class FileInfoCardGridView extends StatelessWidget {
  FileInfoCardGridView({
    Key? key,
    this.crossAxisCount = 5,
    this.childAspectRatio = 1,
    this.taptap,
  }) : super(key: key);

  final int crossAxisCount;
  final double childAspectRatio;
  Function(CloudStorageInfo)? taptap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: demoMyFiles.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: defaultPadding,
        mainAxisSpacing: defaultPadding,
        childAspectRatio: childAspectRatio,
      ),
      itemBuilder: (context, index) {
        return FileInfoCard(
          info: demoMyFiles[index],
          tapping: (v) {
            // Show popup here based on some condition
            // _showPopup(context, demoMyFiles[index]);
            // Call the provided taptap function if available
            if (taptap != null) {
              taptap!(demoMyFiles[index]);
            }
          },
        );
      },
    );
  }

 
  
    
  }

