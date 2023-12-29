import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:blur/blur.dart';
import 'package:image_picker/image_picker.dart';
import 'package:fhoto_editor/fhoto_editor.dart';
import 'package:photo_editing/screens/photoEditorScreen.dart'; 
void main() {
  runApp(MaterialApp(home: Scaffold(body: const HomePage())));
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ImageProvider _backgroundImage = const NetworkImage('https://static.vecteezy.com/system/resources/previews/021/171/680/large_2x/colorful-abstract-wallpaper-modern-background-ai-generated-free-photo.jpg');
  ImageProvider? _selectedImage;

  Future<void> _getImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = FileImage(File(pickedFile.path));
      });
      // ignore: use_build_context_synchronously
      Navigator.push(context, MaterialPageRoute(builder:(context)=> PhotoEditorScreen(image: _selectedImage!)));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
            Container(
              decoration: BoxDecoration(
                image:DecorationImage(image:_backgroundImage!,fit: BoxFit.cover)
              
              ),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,

            ),
        
         /* BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 4, sigmaY: 5),
            child: Container(color: Colors.black.withOpacity(0.5)),
          ),*/
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _getImage,
                  child: Text('Select Image'),
                ),
                //if (_selectedImage != null)
                 // Image(image: _selectedImage!, height: 200),
              ],
            ),
          ),
        ],
      ),
    );
  }
}