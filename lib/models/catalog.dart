class CatalogItem{

  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  ///
  /// Constructor
  ///
  CatalogItem({
    this.id,
    this.name,
    this.desc,
    this.price,
    this.color,
    this.image
  });

  factory CatalogItem.fromMap(Map < String, dynamic > map){
    return CatalogItem(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap(){
    return  {
      "id":id,
      "name":name,
      "desc":desc,
      "price":price,
      "color":color,
      "image":image,
    };
  }

}
