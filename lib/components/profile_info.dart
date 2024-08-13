import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'My Information',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        ListTile(
          leading: Icon(Icons.email),
          title: Text('Email'),
          subtitle: Text('ammar@example.com'),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text('Phone'),
          subtitle: Text('+1234567890'),
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: Text('Location'),
          subtitle: Text('City, Country'),
        ),
      ],
    );
  }
}
