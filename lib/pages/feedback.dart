import 'package:flutter/material.dart';
import 'package:my_app/components/my_textfield.dart';

class Feedbackpage extends StatefulWidget {
  const Feedbackpage({super.key});

  @override
  State<Feedbackpage> createState() => _FeedbackpageState();
}

class _FeedbackpageState extends State<Feedbackpage> {
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

  final Feedbackcontroller = TextEditingController();
  String feed = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback"),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "lib/images/review.png",
                height: 120,
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "Let us know if your query is resolved !",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Radio(
                          value: "Resolved",
                          groupValue: feed,
                          onChanged: (value) {
                            setState(() {
                              feed = value!;
                            });
                          }),
                      Text("Resolved"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "In progress",
                          groupValue: feed,
                          onChanged: (value) {
                            setState(() {
                              feed = value!;
                            });
                          }),
                      Text("In progress"),
                    ],
                  ),
                  Row(
                    children: [
                      Radio(
                          value: "Not Resolved",
                          groupValue: feed,
                          onChanged: (value) {
                            setState(() {
                              feed = value!;
                            });
                          }),
                      Text("Not Resolved"),
                    ],
                  ),
                  Text(
                    "Comments",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  MyTextField(
                      controller: Feedbackcontroller,
                      hintText: "Type here",
                      obscureText: false),
                  SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (Feedbackcontroller.text.isNotEmpty) {
                        _showNotification(context, "Feedback submitted");
                        Feedbackcontroller.clear();
                      } else {
                        _showNotification(context, "Enter Comments");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey, // Text color
                      minimumSize: Size(120, 50), // Button size
                      padding: EdgeInsets.all(15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
