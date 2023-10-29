import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_app/pages/Girls_reg.dart';

class Girlsprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userData = Provider.of<UserGirlsData>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Display Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Icon(
              Icons.person,
              size: 120,
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.person,
                  size: 30,
                ),
                Text('Username:  ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 3, 31, 63),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('${userData.username}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 43, 5, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.data_array,
                  size: 30,
                ),
                Text('Rollno:  ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 3, 31, 63),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('${userData.rollno}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 43, 5, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 30,
                ),
                Text('Contact No:  ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 3, 31, 63),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('${userData.contactno}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 43, 5, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.room,
                  size: 30,
                ),
                Text('Room no:  ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 3, 31, 63),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('${userData.roomno}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 43, 5, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.school,
                  size: 30,
                ),
                Text('Department:  ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 3, 31, 63),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('${userData.department}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 43, 5, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Icon(
                  Icons.apartment,
                  size: 30,
                ),
                Text('Block:  ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 3, 31, 63),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic)),
                Text('${userData.block}',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 43, 5, 66),
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
