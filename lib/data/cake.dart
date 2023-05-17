class Cake {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final bool isFavorite;
  final String subMenu;

  Cake({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.isFavorite,
    required this.subMenu,
  });
}

final List<Cake> listCakes = [
  Cake(
    id: 1,
    name: 'Chocolate Cake',
    price: '79.000',
    imageUrl: 'assets/box1.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 2,
    name: 'Bolu Ubi',
    price: '94.000',
    imageUrl: 'assets/box2.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 5,
    name: 'Bolu Gulung',
    price: '104.000',
    imageUrl: 'assets/box5.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 6,
    name: 'Banana Cake',
    price: '94.000',
    imageUrl: 'assets/box6.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 3,
    name: 'Lapis Surabaya',
    price: '99.000',
    imageUrl: 'assets/box3.jpg',
    isFavorite: false,
    subMenu: 'cake_box',
  ),
  Cake(
    id: 4,
    name: 'Manggo Cake',
    price: '99.000',
    imageUrl: 'assets/box4.jpg',
    isFavorite: true,
    subMenu: 'cake_box',
  ),
];