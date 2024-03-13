import 'package:flutter/material.dart';

AppBar appBar() {
  return AppBar(
    toolbarHeight: 80,
    backgroundColor: Color.fromARGB(255, 140, 63, 255),
    centerTitle: true,
    // Leading property containing the menu icon
    leading: Builder(
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: (80.0 - 55.0) / 2, // Center vertically within AppBar
          ),
          child: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.white, // Set the color to white
              size: 40, // Increase the size of the icon
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        );
      },
    ),
    // Action icon for cart
    actions: [
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.white, // Set the color to white
            size: 40, // Increase the size of the icon
          ),
          onPressed: () {
            // Handle cart action
          },
        ),
      ),
    ],
    // FlexibleSpace containing the image asset
    flexibleSpace: SafeArea(
      child: Image.asset(
        'assets/images/1.png', // Path to your image asset
        height: 80, // Adjust height as needed
      ),
    ),
  );
}
