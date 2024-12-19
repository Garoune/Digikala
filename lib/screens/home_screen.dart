import 'package:flutter/material.dart';
import 'package:flutter_digikala_application/constants/colors.dart';
import 'package:flutter_digikala_application/widgets/banner_slider.dart';
import 'package:flutter_digikala_application/widgets/product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.backgroundScreenColor,
        body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 44,right: 44,bottom: 32,top: 16),
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
                              
                              child: Text('...جستجوی محصولات',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'sb',
                                fontSize: 16,
                                color: CustomColors.grey
                              ),),
                            ),
                            const SizedBox(width: 8),
                            Image.asset('assets/images/icon_search.png'),
                            const SizedBox(width: 16),
                          ],
                        )
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: BannerSlider(),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 44,right: 32,bottom: 20,top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'دسته بندی',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: CustomColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right:24),
                  child: SizedBox(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 10,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: CategoryHorizontalItemList(),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'مشاهده همه',
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.blue,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'پرفروش ترین ها',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 12,
                          color: CustomColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ProductItem(),
                        );
                      },
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
                  child: Row(
                    children: [
                      Image.asset('assets/images/icon_left_categroy.png'),
                      const SizedBox(width: 10),
                      const Text(
                        'مشاهده همه',
                        style: TextStyle(
                          fontFamily: 'SM',
                          color: CustomColors.blue,
                        ),
                      ),
                      const Spacer(),
                      const Text(
                        'پربازدید ترین ها',
                        style: TextStyle(
                          fontFamily: 'SM',
                          fontSize: 12,
                          color: CustomColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: SizedBox(
                    height: 200,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: ((context, index) {
                        return const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ProductItem(),
                        );
                      }),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
  }
}