import 'package:final_project/CRUD/add_new_product_screen.dart';
import 'package:final_project/CRUD/product.dart';
import 'package:final_project/CRUD/product_list_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == "/") {
          widget = const ProductListScreen();
        } else if (settings.name == AddNewProductScreen.name) {
          widget = const AddNewProductScreen();
        } else if (settings.name == UpdateProductScreen.name) {
          final Product product = settings.arguments as Product;
          widget = UpdateProductScreen(
            product: product,
          );
        }
        return MaterialPageRoute(builder: (context) {
          return widget;
        });
      },
    );
  }
}
