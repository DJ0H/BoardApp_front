import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  String url =
      'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg?size=338&ext=jpg&ga=GA1.1.1141335507.1707868800&semt=ais';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Title"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        child: Image(
          image: NetworkImage(
            url,
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
