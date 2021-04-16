import 'package:catalog/models/catalog.dart';
import 'package:catalog/screens/drawer_screen.dart';
import 'package:catalog/view_model/catalog_view_model.dart';
import 'package:catalog/widgets/product_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonData();
  }

  ///
  /// Take data from json
  ///
  loadJsonData()async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    // print(catalogJson);
    final catalogDecode = jsonDecode(catalogJson);
    final productData = catalogDecode['products'];
    CatalogModel.catalogProducts = List.from(productData)
        .map<CatalogItem>((item) =>
        CatalogItem.fromMap(item)).toList();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Catalog App'),
      ),
      drawer: DrawerScreen(),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: (CatalogModel.catalogProducts != null && CatalogModel.catalogProducts.isNotEmpty)
            ?ListView.builder(
              itemCount: CatalogModel.catalogProducts.length,
              itemBuilder: (context,index){
                return ProductItemWidget(
                  catalogItem: CatalogModel.catalogProducts[index],
                );
          },
        ):Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
