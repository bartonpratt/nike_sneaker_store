import 'package:flutter/material.dart';
import '../models/item.dart'; // Import ShopItems
import '../widgets/product_card.dart'; // Import ItemCard
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = shopItems(); // Create a list of ShopItems
    final List<String> category = [
      'All Shoes',
      'Outdoor',
      'Tennis',
      'Football',
      'Basketball',
      'Running',
      'Casual',
      'Training',
      'Hiking',
      'Skateboarding',
      'Golf',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          'Explore',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: AdvancedAvatar(
              statusColor: Colors.green,
              statusAlignment: Alignment.topRight,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const SizedBox(width: 16), // Add space before the search bar
                Expanded(
                  flex: 3,
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Looking for shoes...',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                      ),
                    ),
                    onChanged: (value) {
                      // Handle search logic here
                    },
                  ),
                ),
                const SizedBox(
                    width:
                        16), // Existing space between search bar and filter icon
                Expanded(
                  flex: 1,
                  child: AdvancedAvatar(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(25)),
                    child: IconButton(
                      icon: const Icon(
                        Icons.tune_outlined,
                        color: Colors.white,
                      ),
                      onPressed: () {},
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 16),
            const Text('Select Category'),
            const SizedBox(height: 16),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Chip(
                        label: Text(category[index]),
                        backgroundColor: Colors.grey[200],
                      ),
                    );
                  }),
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Shoes'),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue),
                )
              ],
            ),
            SizedBox(
              height: 250, // Set a fixed height for the grid list
              child: ResponsiveGridList(
                horizontalGridSpacing: 16,
                verticalGridMargin: 16,
                minItemWidth: 300,
                minItemsPerRow: 2,
                maxItemsPerRow: 5,
                listViewBuilderOptions:
                    ListViewBuilderOptions(), // Options for ListView.builder()
                children: items
                    .map((item) => ProductCard(
                          item: item, // Pass the item to ProductCard
                        ))
                    .toList(), // Map ShopItems to ItemCard widgets
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('New Arrivals'),
                Text(
                  'See all',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Container(
              height: 100,
              child: Container(
                  height: 94,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    children: [
                      SizedBox(width: 16),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Summer Sale'),
                          Text(
                            '15% OFF',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Color.fromARGB(255, 42, 5, 90)),
                          )
                        ],
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            Center(
                              child: Image(
                                  image:
                                      AssetImage('assets/shoes/jordan3.png')),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
