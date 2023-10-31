import 'package:flutter/material.dart';
import 'package:my_app/components/my_button.dart';

class ResolveQuery extends StatelessWidget {
  const ResolveQuery({super.key});
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
      appBar: AppBar(
        title: Text("Query Resolving.."),
        backgroundColor: Colors.grey[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Container(
            child: Column(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey, // Text color
                      minimumSize: Size(200, 50), // Button size
                      padding: EdgeInsets.all(15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                    child: Text(
                      "Query provider's profile",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                    onPressed: () {
                      _showNotification(context, "Message sent");
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey, // Text color
                      minimumSize: Size(200, 50), // Button size
                      padding: EdgeInsets.all(15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                    child: Text(
                      "Your Query will be resolved soon!",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                    onPressed: () {
                      _showNotification(context, "Message sent");
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.grey, // Text color
                      minimumSize: Size(200, 50), // Button size
                      padding: EdgeInsets.all(15), // Button padding
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Button border radius
                      ),
                    ),
                    child: Text(
                      "Query resolved. Please provide ur feedback!",
                      style: TextStyle(fontSize: 18),
                    )),
                SizedBox(
                  height: 35,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
