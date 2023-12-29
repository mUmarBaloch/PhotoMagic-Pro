import 'package:flutter/material.dart';
import 'package:fhoto_editor/fhoto_editor.dart';

class PhotoEditorScreen extends StatelessWidget {
  final ImageProvider image;

  const PhotoEditorScreen({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(image: image, fit: BoxFit.cover),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Container()),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.crop),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.brightness_6),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.color_lens),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.photo_size_select_small),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.rotate_left),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.flip),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.text_fields),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.border_all),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.save_alt),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
