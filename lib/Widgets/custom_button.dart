import 'package:first/Widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPress;
  const CustomButton({Key? key, required this.buttonText, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: onPress,
        child: CustomText(buttonText),
      ),
    );
  }
}
