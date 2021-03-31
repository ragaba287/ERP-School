import 'package:erp_school/widget/custom_text.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final String hint;
  final Function onSaved;
  final Function validator;
  final bool obscureText;

  const CustomTextFormField({
    this.text = 'Type text',
    this.hint = 'Hint text',
    this.onSaved,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomText(
            text: text,
            fontSize: 14.0,
            color: Colors.grey,
          ),
          TextFormField(
            obscureText: obscureText,
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
                hintText: hint,
                hintStyle: TextStyle(color: Colors.black.withOpacity(.8)),
                fillColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
