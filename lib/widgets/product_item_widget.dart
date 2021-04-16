import 'package:catalog/models/catalog.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  final CatalogItem catalogItem;

  ProductItemWidget({@required this.catalogItem}) : assert(catalogItem != null) ;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        print('${catalogItem.name}');
      },
      leading: Image.network(catalogItem.image),
      title: Text(catalogItem.name,textScaleFactor: 1.5,),
      subtitle: Text(catalogItem.desc),
      trailing: Text(
        "\$ ${catalogItem.price}",
        style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),
        textScaleFactor: 1.3,
      ),
    );
  }
}
