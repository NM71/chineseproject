import 'package:flutter/material.dart';

class EmployeeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(''),
        ),
        title: Text('Employee Name'),
        subtitle: Text('Role'),
        trailing: Icon(Icons.arrow_forward_ios),
        onTap: () {
          // Navigate to employee details
        },
      ),
    );
  }
}
