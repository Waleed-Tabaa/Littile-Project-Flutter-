// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:untitled/constants.dart';
import 'package:untitled/models/products.dart';
import 'package:untitled/widgets/details/products_image.dart';

import 'color_dot.dart';

class DetailsBody extends StatefulWidget {
  final Product product;
  const DetailsBody({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<DetailsBody> createState() => _DetailsBodyState();
}

int imageIndex = 0;

class _DetailsBodyState extends State<DetailsBody> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.0),
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ProductImage(
                  size: size,
                  image: widget.product.image[imageIndex],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          imageIndex = 0;
                        });
                      },
                      child: Colordot(
                        fillColor: kTextLightColor,
                        isSelected: imageIndex == 0 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          imageIndex = 1;
                        });
                      },
                      child: Colordot(
                        fillColor: Colors.red,
                        isSelected: imageIndex == 1 ? true : false,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          imageIndex = 2;
                        });
                      },
                      child: Colordot(
                        fillColor: Colors.green,
                        isSelected: imageIndex == 2 ? true : false,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                child: Text(
                  widget.product.title,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Text(
                "\$${widget.product.price}",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                  color: kSecondryColor,
                ),
              ),
              SizedBox(
                height: kDefaultPadding,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5, vertical: kDefaultPadding / 2),
          child: Text(
            widget.product.description,
            style: TextStyle(color: Colors.white, fontSize: 10.0),
          ),
        )
      ],
    );
  }
}
