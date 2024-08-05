import 'package:flutter/material.dart';

class ChatSearchFormField extends StatelessWidget {
  const ChatSearchFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 236, 234, 234),
            borderRadius: BorderRadius.circular(30)),
        child: TextFormField(
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(35)),
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
