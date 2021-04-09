
class CatalogItem{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  CatalogItem({this.id, this.name, this.desc, this.price, this.color, this.image});
}

final catalogProducts=[
  CatalogItem(
    id: 'code11',
    name: 'iPhone 12',
    desc: 'Apple iPhone 12 generation',
    price: 999,
    color: '#3305a',
    image: 'https://cdn.techjuice.pk/wp-content/uploads/2021/02/iphone-12-blue-select-2020.png',

  ),
];