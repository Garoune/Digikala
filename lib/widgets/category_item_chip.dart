import 'package:flutter/material.dart';

class CategoryItemChip extends StatelessWidget {
  const CategoryItemChip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              height: 48,  // Reduced size
              width: 48,   // Reduced size
              decoration: ShapeDecoration(
                color: Colors.green,
                shadows: const [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 20,  // Adjusted shadow blur
                    spreadRadius: -10,  // Adjusted shadow spread
                    offset: Offset(0.0, 12),  // Adjusted shadow offset
                  ),
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(36),  // Adjusted border radius
                ),
              ),
            ),
            const Icon(
              Icons.mouse,
              color: Colors.white,
              size: 28,  // Adjusted icon size
            ),
          ],
        ),
        const SizedBox(height: 8),  // Adjusted spacing
        const Text(
          'پروفایل',
          style: TextStyle(
            fontFamily: 'SB',
            fontSize: 10,  // Adjusted font size
          ),
        ),
      ],
    );
  }
}
