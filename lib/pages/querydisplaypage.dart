import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/pages/q_entry.dart';

class Querydisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final queryProvider = Provider.of<QueryProvider>(context);

    // Filter user messages
    List<String> userTexts = queryProvider.messages
        .where((message) => message.isUser)
        .map((message) => message.text)
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Query Display'),
        backgroundColor: Colors.grey[600],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text(
              'Your Queries',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: userTexts.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25.0,
                    vertical: 10.0,
                  ),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: SingleChildScrollView(
                                  child: Text(
                                    "Query: " + userTexts[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/feed');
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(18.0),
                                  child: Container(
                                    padding: EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Text(
                                      "Feedback",
                                      textAlign: TextAlign.end,
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
              },
            ),
          ),
        ],
      ),
    );
  }
}
