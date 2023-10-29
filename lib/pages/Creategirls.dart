import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';
import 'package:my_app/components/my_textfield.dart';

class GCreate_account extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repasswordController = TextEditingController();

  void _showNotification(BuildContext context, message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Notification'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("TCE Hostel..."),
        backgroundColor: const Color.fromARGB(255, 92, 89, 89),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 20),

              // logo
              const Icon(
                Icons.person,
                size: 70,
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username(email)',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),
              MyTextField(
                controller: repasswordController,
                hintText: 'Reenter Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),
              MyButton(
                text: 'Create account',
                onTap: () {
                  if (usernameController.text.isNotEmpty &&
                      passwordController.text.isNotEmpty &&
                      repasswordController.text.isNotEmpty) {
                    if (passwordController.text == repasswordController.text) {
                      Navigator.pushNamed(context, '/gfirst');
                    } else {
                      _showNotification(context, "Recheck password");
                    }
                  } else {
                    _showNotification(context, "Enter all fields");
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
