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
              height: 48,  
              width: 48,   
              decoration: ShapeDecoration(
                color: Colors.green,
                shadows: const [
                  BoxShadow(
                    color: Colors.green,
                    blurRadius: 20, 
                    spreadRadius: -10,  
                    offset: Offset(0.0, 12),  
                  ),
                ],
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(36), 
                ),
              ),
            ),
            const Icon(
              Icons.mouse,
              color: Colors.white,
              size: 28, 
            ),
          ],
        ),
        const SizedBox(height: 8),   
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
