import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../data/global.dart';

class PasswordSettingPage extends StatefulWidget {
  const PasswordSettingPage({Key? key}) : super(key: key);

  @override
  _PasswordSettingPageState createState() => _PasswordSettingPageState();
}

class _PasswordSettingPageState extends State<PasswordSettingPage> {
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController reEnterPasswordController = TextEditingController();

  void _save() async {
    String oldPassword = oldPasswordController.text;
    String newPassword = newPasswordController.text;
    String reEnterPassword = reEnterPasswordController.text;

    // Check if passwords match
    if (newPassword != reEnterPassword) {
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('New password and re-entered password do not match'),
      ));
      return;
    }

    // Prepare the data to send
    Map<String, dynamic> requestData = {
      'old_password': oldPassword,
      'new_password': newPassword,
      'user_name': USERDATA.NAME, // Include USERDATA.UserLV
    };

    // Send the data to the API endpoint
    try {
      final response = await http.post(
        Uri.parse('http://127.0.0.1:1111/setting'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode(requestData),
      );

      if (response.statusCode == 200) {
        // Handle success
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Password settings saved successfully'),
        ));
      } else {
        // Handle error
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Failed to save password settings'),
        ));
      }
    } catch (e) {
      // Handle error
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('An error occurred while connecting to the server'),
      ));
    }
  }

  void _clearFields() {
    oldPasswordController.clear();
    newPasswordController.clear();
    reEnterPasswordController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Password Settings'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: oldPasswordController,
                decoration: InputDecoration(labelText: 'Old Password'),
                obscureText: true,
                style: TextStyle(fontSize: 16), // Set font size of text input
                // Set height of text input
                // Adjust the height value according to your preference
                // You may also use EdgeInsets.symmetric(vertical: ...) to set vertical padding
                // EdgeInsets.only(bottom: ...) to set only bottom padding, etc.
                // Ensure the height is enough to accommodate the font size
                // e.g., for font size 16, height 40 may be appropriate
                // for larger font sizes, you may need to adjust the height accordingly
                // You can also set fixed height and width for the text input field
                // by wrapping it in a SizedBox or Container widget
                // For example:
                // child: SizedBox(height: 40, width: double.infinity, child: TextField(...)),
                // or
                // child: Container(height: 40, width: double.infinity, child: TextField(...)),
                // Adjust the height and width values as needed
                // If you set fixed height and width, ensure the size is enough for the text input
                // and the container does not overflow
                // Also, consider using InputDecoration contentPadding property
                // to adjust the internal padding of the text input field
                // e.g., contentPadding: EdgeInsets.symmetric(vertical: 12),
                // This will ensure proper spacing between the text and the border of the input field
                // You can adjust the vertical value as needed
              ),
              SizedBox(height: 16),
              TextField(
                controller: newPasswordController,
                decoration: InputDecoration(labelText: 'New Password'),
                obscureText: true,
                style: TextStyle(fontSize: 16),
                // Similar adjustments as above for the height and width
              ),
              SizedBox(height: 16),
              TextField(
                controller: reEnterPasswordController,
                decoration: InputDecoration(labelText: 'Re-enter Password'),
                obscureText: true,
                style: TextStyle(fontSize: 16),
                // Similar adjustments as above for the height and width
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _save,
                      child: Container(
                        height: 40, // Set the height of the button
                        child: Center(
                          child: Text(
                            'Save',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _clearFields,
                      child: Container(
                        height: 40, // Set the height of the button
                        child: Center(
                          child: Text(
                            'Cancel',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
