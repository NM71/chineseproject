import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  File? _image;
  final ImagePicker _picker = ImagePicker();

  Future<void> _getImage() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: _image != null
                            ? FileImage(_image!)
                            : AssetImage('assets/ammar.png') as ImageProvider,
                        child: _image == null
                            ? Icon(Icons.person, size: 60, color: Colors.grey[400])
                            : null,
                      ),
                      Positioned(
                        right: 0,
                        bottom: 0,
                        child: GestureDetector(
                          onTap: _getImage,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Ammar',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Software Developer',
                    style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24,),
            Text(
              'Self-Introduction',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Passionate about creating intuitive user interfaces and solving complex problems. '
                  'I enjoy working in collaborative environments and continuously learning new technologies.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            SizedBox(height: 24),
            _buildInfoRow(Icons.cake, 'Date of Birth', 'January 1, 1990'),
            _buildInfoRow(Icons.calendar_today, 'Date of Joining', 'March 15, 2022'),
            _buildInfoRow(Icons.work, 'Department', 'Engineering'),
            _buildInfoRow(Icons.person, 'Employment Type', 'Full-time'),
            SizedBox(height: 24),
            Text(
              'Remarks',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  Icon(Icons.note, color: Colors.grey[600]),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'Top performer and an excellent team player.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              Text(
                value,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}