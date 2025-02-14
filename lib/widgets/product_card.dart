import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nike_sneaker_store/screens/product_details_page.dart';
import '../models/item.dart';

class ProductCard extends StatelessWidget {
  final Item item;

  const ProductCard({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(ProductDetailsPage());
      },
      child: Container(
        width: 160,
        height: 200,
        padding: const EdgeInsets.only(top: 10, left: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 16,
            ),
          ],
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Image.asset(
                        item.imageUrl,
                        width: 500,
                        height: 500,
                      ),
                    ),
                  ),
                  Positioned(
                    child: IconButton(
                      icon: Icon(
                        Icons.favorite_outline,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Text(
              item.title,
              style: const TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(item.subtitle),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item.price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.add, color: Colors.white),
                    onPressed: () {
                      // Add to Cart Action
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
