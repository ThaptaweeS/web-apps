import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newmaster/components/chart2.dart';
import 'package:newmaster/data/global.dart';
import 'package:newmaster/page/page02.dart';
import 'package:newmaster/page/page2-data/text-card.dart';
import 'package:newmaster/page/tank/tank1-data/data_page01.dart';
import 'package:newmaster/components/recent_files.dart';
import 'package:newmaster/constants.dart';
import 'package:newmaster/page/tank/tank1-data/layout-history.dart';
import 'package:newmaster/page/tank/tank1-data/pump.dart';
import 'package:newmaster/presentation/samples/bar/bar_chart_sample1.dart';
import 'package:newmaster/presentation/samples/bar/bar_chart_sample2.dart';
import 'package:newmaster/presentation/samples/line/line_chart_sample2.dart';
import 'package:newmaster/presentation/samples/line/line_chart_sample3.dart';
import 'package:newmaster/presentation/samples/line/line_chart_sample4.dart';
import 'package:newmaster/responsive.dart';
import 'package:newmaster/widget/appbar/AppBar.dart';
import 'package:newmaster/widget/common/Radiobutton.dart';
import 'package:newmaster/widget/menu/side_menu.dart';
import 'package:newmaster/page/tank/tank1-data/layout-chart.dart';
import 'package:http/http.dart' as http;

import '../../bloc/BlocEvent/ChangePageEvent.dart';
import '../../mainBody.dart';

late BuildContext FeedHistoryContext;

class FeedHistory extends StatelessWidget {
  const FeedHistory({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    FeedHistoryContext = context;

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              CuPage = Page02body();
              MainBodyContext.read<ChangePage_Bloc>()
                  .add(ChangePage_nodrower());
            },
          ),
        ),
        body: FeedHistoryBody());
  }
}

class FeedHistoryBody extends StatefulWidget {
  const FeedHistoryBody({super.key});

  @override
  State<FeedHistoryBody> createState() => _P1DASHBOARDMAINState2();
}

class _P1DASHBOARDMAINState2 extends State<FeedHistoryBody> {
  late List<Map<String, dynamic>> tableData = [];
  late List<bool> showDetails = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    final url = 'http://127.0.0.1:1111/chem-feed';
    try {
      final response = await http.post(Uri.parse(url));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        setState(() {
          tableData = responseData.cast<Map<String, dynamic>>();
          // Initialize showDetails list with false for each row
          showDetails = List<bool>.filled(tableData.length, false);
        });
      } else {
        throw Exception('Failed to fetch data');
      }
    } catch (error) {
      print('Error: $error');
    }
  }

  // Method to toggle visibility of details for a row
  void toggleDetailsVisibility(int index) {
    setState(() {
      showDetails[index] = !showDetails[index];
    });
  }

  // Method to show popup dialog
  void showDetailPopup(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Details'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Chemicals: ${tableData[index]['Detail']}'),
              Text('Feed : ${tableData[index]['Solv']}'),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Call API1 ('Passed' endpoint)
                _callAPI('Passed', tableData[index]['id']).then((_) {
                  // Fetch updated data for the table
                  fetchDataFromAPI();
                  // Close the dialog
                  Navigator.of(context).pop();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Change the button color to green
              ),
              child: Text('Pass'),
            ),
            ElevatedButton(
              onPressed: () {
                // Call API2 ('Approve' endpoint)
                _callAPI('Feed', tableData[index]['id']).then((_) {
                  // Fetch updated data for the table
                  fetchDataFromAPI();
                  // Close the dialog
                  Navigator.of(context).pop();
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange, // Change the button color to orange
              ),
              child: Text('Feed'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Change the button color to red
              ),
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  // Method to call API
  Future<void> _callAPI(String endpoint, int id) async {
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:1111/$endpoint'),
        body: {'id': id.toString()},
      );
      if (response.statusCode == 200) {
        // API call successful
        print('API call successful: $endpoint, id: $id');
        // You can perform any additional actions here if needed
      } else {
        // API call failed
        print('Failed to call API: $endpoint, id: $id');
        // You can handle errors or display a message to the user
      }
    } catch (error) {
      // An error occurred during the API call
      print('Error calling API: $error');
      // You can handle errors or display a message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        primary: false,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(
                  Icons.heat_pump,
                  size: 36.0,
                  color: Colors.white,
                ),
                title: Text(
                  'Feed Chemical History: Dashboard',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            DataTable(
              columns: [
                DataColumn(label: Text('Tank')),
                DataColumn(label: Text('Detail')),
                DataColumn(label: Text('Lot')),
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Value(Kg)')),
                DataColumn(label: Text('Date')),
                DataColumn(label: Text('Time')),
              ],
              rows: List.generate(tableData.length, (index) {
                return DataRow(
                  cells: [
                    DataCell(Text(tableData[index]['tank'].toString())),
                    DataCell(Text(tableData[index]['detail'].toString())),
                    DataCell(Text(tableData[index]['lot'].toString())),
                    DataCell(Text(tableData[index]['name'].toString())),
                    DataCell(Text(tableData[index]['value'].toString())),
                    DataCell(Text(tableData[index]['date'].toString())),
                    DataCell(Text(tableData[index]['time'].toString())),
                  ],
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
