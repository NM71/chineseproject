import 'package:flutter/material.dart';
import 'employee_card.dart';

class ColleaguesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Employees List',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          itemBuilder: (context, index) {
            return EmployeeCard();
          },
        ),
      ],
    );
  }
}
