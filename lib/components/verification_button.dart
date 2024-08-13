import 'package:flutter/material.dart';

class VerificationButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'You Have 1 Identity Verification!',
            style: TextStyle(color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            child: Text('Use Now', style: TextStyle(color: Colors.blue)),
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
