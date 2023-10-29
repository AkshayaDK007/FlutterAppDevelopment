import 'package:flutter/material.dart';

class Querypage extends StatelessWidget {
  const Querypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome to queries, Choose and Enter"),
          toolbarHeight: 100,
          backgroundColor: Colors.grey[850],
          shadowColor: Colors.grey,
          //leading: Icon(Icons.quickreply),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[600]),
                    //padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('lib/images/dish.png', height: 150),

                        /*  Icon(
                          Icons.abc,
                          size: 50.0,
                          color: Colors.white,
                        ),*/
                        SizedBox(height: 10.0),
                        Text(
                          "Food queries",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[600]),
                    //padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('lib/images/backup.png', height: 150),
                        /*  Icon(
                          Icons.abc,
                          size: 50.0,
                          color: Colors.white,
                        ),*/
                        SizedBox(height: 10.0),
                        Text(
                          "Electric queries",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[600]),
                    //padding: EdgeInsets.all(16.0),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset('lib/images/save-water.png', height: 150),
                          /*  Icon(
                            Icons.abc,
                            size: 50.0,
                            color: Colors.white,
                          ),*/

                          SizedBox(height: 10.0),
                          Text(
                            "Water related queries",
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.white,
                                fontFamily: 'Roboto'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[600]),
                    //padding: EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('lib/images/cleanliness.jpg', height: 150),
                        /*  Icon(
                          Icons.abc,
                          size: 50.0,
                          color: Colors.white,
                        ),*/
                        SizedBox(height: 10.0),
                        Text(
                          "Maintenance(Room)",
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.white,
                              fontFamily: 'Roboto'),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.grey[600],
              ),
              height: 80,
              width: 120,
              child: Center(child: Text("Others")),
            )
          ],
        ));
  }
}

class Next extends StatelessWidget {
  final onTap;
  Next({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
    );
  }
}
