import 'package:flutter/material.dart';
import 'package:my_app/components/my_textfield.dart';
import 'package:my_app/components/dept.dart';
import 'package:my_app/components/Girlsblock.dart';
import 'package:my_app/components/my_button.dart';
import 'package:provider/provider.dart';

class UserGirlsData extends ChangeNotifier {
  String? username;
  String? rollno;
  String? contactno;
  String? roomno;
  String? department;
  String? block;

  void setUserDetails({
    required String username,
    required String rollno,
    required String contactno,
    required String roomno,
    required String department,
    required String block,
  }) {
    this.username = username;
    this.rollno = rollno;
    this.contactno = contactno;
    this.roomno = roomno;
    this.department = department;
    this.block = block;
    notifyListeners();
  }
}

class Girls extends StatelessWidget {
  final usernamecontroller = TextEditingController();
  final rollnocontroller = TextEditingController();
  final contactnocontroller = TextEditingController();
  final roomnocontroller = TextEditingController();
  String? selectedDepartment;
  String? selectedBlock;
  Girls({this.selectedDepartment, this.selectedBlock});
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

  void _navigateToDisplayPage(BuildContext context) {
    final userData = Provider.of<UserGirlsData>(context, listen: false);

    if (selectedDepartment != null && selectedBlock != null) {
      userData.setUserDetails(
        username: usernamecontroller.text,
        rollno: rollnocontroller.text,
        contactno: contactnocontroller.text,
        roomno: roomnocontroller.text,
        department: selectedDepartment!,
        block: selectedBlock!,
      );
    } else {
      //_showNotification(context, "Please select department and block");
    }
  }

  //final usernamecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 132, 93, 198),
          title: const Text("Student Registration"),
        ),
        body: SafeArea(
          child: ListView(
            children: [
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  controller: usernamecontroller,
                  hintText: 'Your Name',
                  obscureText: false),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                child: Container(
                  height: 53,
                  child: Departmentbutton(
                    onDepartmentSelected: (selectedDepartment) {
                      // Update the selected department in Boys widget
                      this.selectedDepartment = selectedDepartment;
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  controller: rollnocontroller,
                  hintText: 'Roll no',
                  obscureText: false),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  controller: contactnocontroller,
                  hintText: 'Contact no',
                  obscureText: false),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                  child: Container(
                      height: 53,
                      child: Block(
                        onBlockSelected: (selectedBlock) {
                          this.selectedBlock = selectedBlock;
                        },
                      ))),
              const SizedBox(
                height: 25,
              ),
              MyTextField(
                  controller: roomnocontroller,
                  hintText: 'Room no or Dorm no',
                  obscureText: false),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                  onTap: () {
                    //_navigateToDisplayPage(context);
                    if (usernamecontroller.text.isNotEmpty &&
                        rollnocontroller.text.isNotEmpty &&
                        contactnocontroller.text.isNotEmpty &&
                        roomnocontroller.text.isNotEmpty) {
                      _navigateToDisplayPage(context);
                      Navigator.pushNamed(context, '/gaccount');
                    } else {
                      _showNotification(context, "Enter all details");
                    }
                  },
                  text: 'Register')
            ],
          ),
        ));
  }
}
