// import 'package:flutter/material.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body:Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text('Welcome,', style: TextStyle(fontSize: 15, color: Colors.grey),),
//                     Text('Muhammad Ammar', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
//                   ],
//                 ),
//                 CircleAvatar(
//                   minRadius: 55,
//                   backgroundColor: Colors.white,
//                   backgroundImage: AssetImage('assets/logo.png'),
//                 ),
//               ],
//             ),
//             SizedBox(height: 24),
//             Text('Employee Summary', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),),
//             SizedBox(height: 20,),
//             _buildEmployeeSummary(),
//             SizedBox(height: 24),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// Widget _buildEmployeeSummary() {
//   return GridView.count(
//     crossAxisCount: 2,
//     shrinkWrap: true,
//     crossAxisSpacing: 16,
//     mainAxisSpacing: 16,
//     childAspectRatio: 2.5,
//     physics: NeverScrollableScrollPhysics(),
//     children: [
//       _buildSummaryItem(Icons.calendar_today, 'Leave', '0'),
//       _buildSummaryItem(Icons.attach_money, 'Salary', '10000'),
//       _buildSummaryItem(Icons.person_outline, 'Absence', '1'),
//       _buildSummaryItem(Icons.account_balance_wallet, 'Loan', '0'),
//     ],
//   );
// }
//
// Widget _buildSummaryItem(IconData icon, String title, String count) {
//   return Container(
//     decoration: BoxDecoration(
//       border: Border.all(color: Colors.grey[300]!),
//       borderRadius: BorderRadius.circular(8),
//
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Icon(icon, color: Colors.blue),
//         SizedBox(height: 4),
//         Text(title, style: TextStyle(fontSize: 12)),
//         Text(count, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//       ],
//     ),
//   );
// }















import 'package:flutter/material.dart';
import '../components/verification_button.dart';
import '../components/my_summary.dart';
import '../components/colleague_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome,',
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                      Text(
                        'Muhammad Ammar',
                        style: TextStyle(
                            fontSize: 21,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    minRadius: 45,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/ammar.png'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              VerificationButton(),
              SizedBox(height: 20),
              MySummary(),
              SizedBox(height: 20),
              ColleaguesList(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
