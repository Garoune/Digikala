import 'package:flutter/material.dart';
import 'package:flutter_digikala_application/constants/colors.dart';
import 'package:flutter_digikala_application/widgets/category_item_chip.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.backgroundScreenColor,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 44, right: 44, bottom: 32, top: 16),
              child: Container(
                height: 46,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    const SizedBox(width: 16),
                    Image.asset('assets/images/icon_apple_blue.png'),
                    const Expanded(
                      child: Text(
                        'حساب کاربری',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'sb',
                            fontSize: 16,
                            color: CustomColors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'گارونه گرجیان',
              style: TextStyle(
                fontFamily: 'sb',
                fontSize: 16,
              ),
            ),
            const Text(
              '09023944162',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Directionality(
              textDirection: TextDirection.rtl,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                  CategoryItemChip(),
                ],
              ),
            ),
            const Spacer(),
            const Text(
              'اپل شاپ',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
                color: CustomColors.grey,
              ),
            ),
            const Text(
              'v-1.0.00',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
                color: CustomColors.grey,
              ),
            ),
            const Text(
              'instagram.com/mojava-dev',
              style: TextStyle(
                fontFamily: 'sm',
                fontSize: 10,
                color: CustomColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
