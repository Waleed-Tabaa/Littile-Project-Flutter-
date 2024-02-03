import 'package:flutter/material.dart';
import 'package:untitled/constants.dart';
import 'package:untitled/models/products.dart';
import 'package:untitled/screens/details_screen.dart';
import 'package:untitled/widgets/home/product_cart.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70.0),
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: product.length,
                  itemBuilder: ((context, index) => ProductCard(
                        itemIndex: index,
                        product: product[index],
                        prees: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => DetailsScreen(
                              product: product[index],
                            ),
                          ));
                        },
                      )))
            ],
          ),
        ),
      ]),
    );
  }
}
