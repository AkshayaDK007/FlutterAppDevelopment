import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Q_entry extends StatefulWidget {
  const Q_entry({Key? key});

  @override
  State<Q_entry> createState() => _Q_entryState();
}

class _Q_entryState extends State<Q_entry> {
  final TextEditingController queryController = TextEditingController();

  void postQuery(String text) {
    final queryProvider = Provider.of<QueryProvider>(context, listen: false);
    DateTime now = DateTime.now();
    String formattedDateTime =
        "${now.day}/${now.month}/${now.year} ${now.hour}:${now.minute}";
    queryProvider.addMessage(
        Chatmsg(text: text, isUser: true, timestamp: formattedDateTime));
    queryProvider.addMessage(replymsg(
        text: 'Your query has been noted..!', timestamp: formattedDateTime));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Query Chat'),
        backgroundColor: Colors.grey[600],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Consumer<QueryProvider>(
              builder: (context, queryProvider, child) {
                return ListView.separated(
                  reverse: false,
                  itemCount: queryProvider.messages.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return queryProvider.messages[index];
                  },
                );
              },
            ),
          ),
          Divider(height: 2.0),
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
            ),
            child: _buildTextComposer(),
          ),
        ],
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).shadowColor),
      child: Container(
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: queryController,
                onSubmitted: (text) {
                  postQuery(text);
                  queryController.clear();
                },
                decoration: InputDecoration.collapsed(
                  hintText: 'Type your query...',
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.send),
              onPressed: () {
                postQuery(queryController.text);
                queryController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}

class QueryProvider extends ChangeNotifier {
  List<Chatmsg> messages = [];

  void addMessage(Chatmsg message) {
    messages.add(message);
    notifyListeners();
  }
}

class replymsg extends Chatmsg {
  replymsg({required String text, required String timestamp})
      : super(text: text, timestamp: timestamp);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Admin:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 5.0),
                    child: Text(text),
                  ),
                  SizedBox(height: 5),
                ],
              ),
            ),
          ),
          Text(
            timestamp,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}

class Chatmsg extends StatelessWidget {
  final String text;
  final bool isUser;
  final String timestamp;

  Chatmsg({required this.text, this.isUser = false, required this.timestamp});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'You:',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5.0),
                        child: Text(text),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                timestamp,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
