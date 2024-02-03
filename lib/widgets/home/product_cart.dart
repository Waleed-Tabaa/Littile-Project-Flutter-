// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/products.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    Key? key,
    required this.itemIndex,
    required this.product,
    required this.prees,
  }) : super(key: key);
  final int itemIndex;
  final Product product;
  final VoidCallback prees;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      height: 190.0,
      child: InkWell(
        onTap: () {
          widget.prees();
        },
        child: Container(
          // height: 166,
          //container مشان زوايا الصورة تصير نفس زوايا ال
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 15),
                blurRadius: 25,
                color: Colors.black12,
              )
            ],
          ),
          child: Row(
            children: [
              // تستخدم اكتر شي للصور مشان تحدد القياس
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      22.0,
                    ),
                  ),
                  child: AspectRatio(
                    aspectRatio: 4 / 6,
                    child: Image.asset(
                      widget.product.image[0],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.product.title,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Text(
                        widget.product.subtitle,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 1.5, //هي ي البكسل
                            vertical: kDefaultPadding / 5), //هي بالبكسل
                        decoration: BoxDecoration(
                          color: kSecondryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text("The Price is :\n\$${widget.product.price} "),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}