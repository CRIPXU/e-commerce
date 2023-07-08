import 'package:e_commerce/data/data_sources/list_category_listing.dart';
import 'package:e_commerce/data/data_sources/list_hot_listing.dart';
import 'package:e_commerce/presentation/widgets/widget_painter.dart';
import 'package:e_commerce/presentation/widgets/widgets_text_slide.dart';
import 'package:flutter/material.dart';

import '../../data/data_sources/list_feature_listing.dart';
import '../widgets/widget_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

const CURVE_HEIGHT = 100;
const AVATAR_RADIUS = CURVE_HEIGHT * 0.8;
const fontMedium = 'Medium';

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: <Widget>[
            //Header

            Stack(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  height: 140,
                  child: CustomPaint(
                    painter: MyPainter(),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.menu, color: Colors.white),
                            onPressed: () {},
                          ),
                          const Text(
                            'Home',
                            style:
                                TextStyle(fontFamily: fontMedium, fontSize: 18),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            icon:
                                const Icon(Icons.favorite, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.shopping_cart,
                                color: Colors.white),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  transform: Matrix4.translationValues(0.0, 60, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(26)),
                          boxShadow: []),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: <Widget>[
                          TextField(
                            decoration: InputDecoration(
                              filled: false,
                              fillColor: Colors.white,
                              hintText: 'Search here',
                              hintStyle: const TextStyle(color: Colors.grey),
                              contentPadding: const EdgeInsets.only(
                                  left: 26.0, bottom: 8.0, right: 50.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 0.5),
                                borderRadius: BorderRadius.circular(26),
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.white, width: 0.5),
                                  borderRadius: BorderRadius.circular(26)),
                            ),
                          ),
                          GestureDetector(
                            child: const Padding(
                              padding: EdgeInsets.only(right: 16.0),
                              child: Icon(Icons.search, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Category
                    const WidgetTextSlider(text2: 'View all', text: 'Category'),
                    SizedBox(
                      height: 105,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: mListing.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(left: 16),
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(mListing[index]['image'],
                                      fit: BoxFit.cover, height: 75, width: 75),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  mListing[index]['text'],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const WidgetTextSlider(text: 'Offers', text2: 'View all'),
                    Container(
                      padding: const EdgeInsets.only(right: 16, left: 16),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 3.5,
                      child: PageView(
                        children: const <Widget>[
                          Db2Slider(
                              image:
                                  'https://i.pinimg.com/564x/9c/df/1f/9cdf1f57c659023e5539d05cd6b44e94.jpg'),
                          Db2Slider(
                              image:
                                  'https://i.pinimg.com/564x/b3/b2/5f/b3b25f7badc1ea4bf8f9a84f01dd1a84.jpg'),
                          Db2Slider(
                              image:
                                  'https://i.pinimg.com/564x/82/94/37/82943733262f227514f40debc6c27fd2.jpg'),
                          Db2Slider(
                              image:
                                  'https://i.pinimg.com/564x/a1/45/ee/a145ee91a45c52e7300528277fe4bf15.jpg'),
                          Db2Slider(
                              image:
                                  'https://i.pinimg.com/564x/56/58/9d/56589dc27777995fd32092d1ca0faa58.jpg'),
                          Db2Slider(
                              image:
                                  'https://i.pinimg.com/564x/56/d0/2f/56d02f976963e42fa5c6021a22908ba1.jpg'),
                        ],
                      ),
                    ),

                    //hot Products
                    const WidgetTextSlider(
                        text: 'Hot Products', text2: 'View all'),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: hListing.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            margin: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(hListing[index]['image'],
                                      fit: BoxFit.cover,
                                      height: 170,
                                      width: MediaQuery.of(context).size.width),
                                ),
                                const SizedBox(height: 4),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 4),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(hListing[index]['text']),
                                      Text(
                                        hListing[index]['price'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const WidgetTextSlider(text: 'Offers', text2: 'View all'),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: fListing.length,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Container(
                            width: MediaQuery.of(context).size.width * 0.4,
                            margin: const EdgeInsets.only(left: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(fListing[index]['image'],
                                      fit: BoxFit.cover,
                                      height: 170,
                                      width: MediaQuery.of(context).size.width),
                                ),
                                const SizedBox(height: 4),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(left: 4, right: 4),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(fListing[index]['text']),
                                      Text(
                                        fListing[index]['price'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

