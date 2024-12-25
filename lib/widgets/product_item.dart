import 'package:flutter/material.dart';
import 'package:flutter_digikala_application/constants/colors.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,  // Reduced height
      width: 140,   // Reduced width
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(12),  // Slightly smaller border radius
        ),
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 8,  // Reduced spacing
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Image.asset('assets/images/iphone.png', height: 90),  // Reduced image size
              ),
              Positioned(
                top: 0,
                right: 8,  // Adjusted position
                child: SizedBox(
                  width: 20,  // Reduced size
                  height: 20,  // Reduced size
                  child: Image.asset('assets/images/active_fav_product.png'),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 8,  // Adjusted position
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),  // Smaller border radius
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4, vertical: 2),  // Reduced padding
                    child: Text(
                      '%3',
                      style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 10,  // Smaller font size
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 8,  // Reduced spacing
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 8, right: 8),  // Adjusted padding
            child: Text(
              'آیفون 13 پرومکس',
              style: TextStyle(
                fontFamily: 'SN',
                fontSize: 12,  // Smaller font size
              ),
            ),
          ),
          const SizedBox(
            height: 8,  // Reduced spacing
          ),
          Container(
            height: 50,  // Slightly reduced height
            decoration: const BoxDecoration(
              color: CustomColors.blue,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
              boxShadow: [
                BoxShadow(
                  color: CustomColors.blue,
                  blurRadius: 20,  // Adjusted shadow blur
                  spreadRadius: -10,  // Adjusted shadow spread
                  offset: Offset(0.0, 12),  // Adjusted shadow offset
                ),
              ],
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),  // Adjusted padding
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'تومان',
                    style: TextStyle(
                      fontFamily: 'SM',
                      fontSize: 10,  // Smaller font size
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 4,  // Reduced spacing
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '49.000.000',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 10,  // Smaller font size
                          color: Colors.white,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                      Text(
                        '48.550.000',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 14,  // Slightly reduced font size
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  SizedBox(
                    width: 20,  // Reduced size
                    height: 20,  // Reduced size
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

