import 'package:flutter/material.dart';
import 'summary_card.dart';

class MySummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Summary',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        GridView.count(
          crossAxisCount: 2,
          shrinkWrap: true,
          crossAxisSpacing: 6,
          mainAxisSpacing: 6,
          physics: NeverScrollableScrollPhysics(),
          children: [
            SummaryCard(icon: Icons.event, label: 'Leave', value: '0'),
            SummaryCard(icon: Icons.attach_money, label: 'Salary', value: '10000'),
            SummaryCard(icon: Icons.calendar_today, label: 'Absence', value: '1'),
            SummaryCard(icon: Icons.account_balance_wallet, label: 'Loan', value: '1'),
          ],
        ),
      ],
    );
  }
}
