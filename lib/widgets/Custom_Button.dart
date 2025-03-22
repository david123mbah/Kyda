import 'package:flutter/material.dart';
import 'package:kyda/utils/colors.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 350,
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        decoration: BoxDecoration(
          color: AppColors.primary, // Blue button color
          borderRadius: BorderRadius.circular(50), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Button text
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 14,
              ),
            ),
            const SizedBox(width: 30),

            // Circular arrow icon
            Container(
              height: 48,
              width: 48,
              decoration: const BoxDecoration(
                color: Colors.white, // Background color for the circle
                shape: BoxShape.circle, // Make it circular
              ),
              child: Center(
                  child: Image.asset(
                "lib/assets/Fill 1.png",
                width: 21.3,
                height: 17.26,
              )),
            ),
          ],
        ),
      ),
    );
  }
}
