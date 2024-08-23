// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:health_hub/pallete.dart'; // Assuming this is the correct import

class LoginField extends StatelessWidget {
  final String hintText;

  const LoginField({Key? key, required this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 400, // Ensure this width suits your layout
      ),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(
              horizontal: 20, vertical: 15), // Adjust padding as needed
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Pallete
                  .borderColor, // Ensure this color is defined in Pallete
              width: 3, // Adjust width if needed
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color:
                  Pallete.gradient2, // Ensure this color is defined in Pallete
              width: 3, // Adjust width if needed
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey, // Optional: Adjust hint text color if needed
          ),
        ),
      ),
    );
  }
}
