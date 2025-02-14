class Item {
  final String imageUrl;
  final String title;
  final String description;
  final String subtitle;
  final String price;
  bool isFavorite;

  Item({
    required this.imageUrl,
    required this.title,
    required this.description,
    required this.subtitle,
    required this.price,
    this.isFavorite = false,
  });
}

List<Item> shopItems() {
  return <Item>[
    Item(
      imageUrl: 'assets/shoes/air_jordan1.png',
      title: 'BEST SELLER',
      description: 'Nike Jordan',
      subtitle: 'Air Jordan 1 ',
      price: '\$302.00',
    ),
    Item(
      imageUrl: 'assets/shoes/jordan.png',
      title: 'NEW ARRIVAL',
      description: 'Nike Jordan',
      subtitle: 'Air Jordan 1',
      price: '\$259.00',
    ),
    // Item(
    //   imageUrl: 'assets/shoes/jordan3.png',
    //   title: 'BEST SELLER',
    //   description: 'Nike Jordan',
    //   subtitle: 'Air Jordan 3',
    //   price: '\$302.00',
    // ),
    // Item(
    //     description: 'Nike Jordan',
    //     imageUrl: 'assets/shoes/jordan4.png',
    //     price: '\$302.00',
    //     subtitle: 'Air Jordan 4',
    //     title: 'BEST SELLER'),
  ];
}
