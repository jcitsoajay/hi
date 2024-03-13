import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(), // Call the appBar function here

      body: ListView(
        children: [
          _searchField(),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/a.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/c.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/a.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: AssetImage("assets/images/b.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //5th Image of Slider
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 180.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            height: 70, // Adjust the height of the banner as needed
            // Adjust the height of the banner as needed
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color:
                  Color(0xFFFFE5E5), // Set the background color of the banner
              //     image: DecorationImage(
              //       image: AssetImage(
              //           'assets/images/2.png'), // Provide the path to your banner image asset
              //      fit: BoxFit.cover, // Adjust the image fit as needed
              //   ),
            ),
            child: Center(
              child: Text(
                'Sell with Us', // Add text for the banner if needed
                style: TextStyle(
                  color: Color.fromRGBO(238, 59, 59, 1), // Set the text color
                  fontSize: 20, // Adjust the font size as needed
                  fontWeight:
                      FontWeight.bold, // Adjust the font weight as needed
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            // Adjust the height of the banner as needed
            child: const Center(
              child: Text(
                'New Arrivals', // Add text for the banner if needed
                style: TextStyle(
                  color: Color.fromRGBO(166, 59, 238, 1), // Set the text color
                  fontSize: 20, // Adjust the font size as needed
                  fontWeight:
                      FontWeight.bold, // Adjust the font weight as needed
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // First item
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 252, 240, 251),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/4.png', // Replace 'your_image.png' with your actual image asset path
                            width: 1000, // Adjust width as needed
                            height: 90, // Adjust height as needed
                          ),
                          // Add some spacing between the image and text
                          Text(
                            'Item 1',
                            style: TextStyle(fontSize: 16),
                          ),

                          Text(
                            '10.99', // Replace with your actual price
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 173, 64, 64)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Second item
                  Container(
                    width: 150,
                    height: 150,
                    margin: EdgeInsets.only(right: 10.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFFCF0FB),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/4.png', // Replace 'your_image.png' with your actual image asset path
                            width: 1000, // Adjust width as needed
                            height: 90, // Adjust height as needed
                          ),
                          // Add some spacing between the image and text
                          Text(
                            'Item 1',
                            style: TextStyle(fontSize: 16),
                          ),

                          Text(
                            '10.99', // Replace with your actual price
                            style: TextStyle(
                                fontSize: 16,
                                color: const Color.fromARGB(255, 173, 64, 64)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Text(
              '______',
              style: TextStyle(
                color: Colors.black,
                fontSize: 40.0,
              ),
            ),
          ),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 175, 76, 142),
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration:
                    BoxDecoration(color: Color.fromARGB(255, 215, 224, 216)),
                accountName: Text(
                  "Ajay",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("ha ha.com"),
                currentAccountPictureSize: Size.square(50),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 0, 0, 0),
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book),
              title: const Text(' My Course '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium),
              title: const Text(' Go Premium '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label),
              title: const Text(' Saved Videos '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text(' Edit Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ), //Drawer
    );
  }

  // Define the appBar function here
  AppBar appBar() {
    return AppBar(
      toolbarHeight: 90,
      backgroundColor: Color.fromARGB(255, 140, 63, 255),
      centerTitle: true,
      // Leading property containing the menu icon
      leading: Builder(builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: (90.0 - 45.0) / 2, // Center vertically within AppBar
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
      }),
      // Action icon for cart
      actions: [
        Padding(
          // padding: const EdgeInsets.all(15.0),
          padding: EdgeInsets.symmetric(
            vertical: (90.0 - 45.0) / 2, // Center vertically within AppBar
          ),

          child: IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white, // Set the color to white
              size: 35, // Increase the size of the icon
            ),
            onPressed: () {
              // Handle cart action
            },
          ),
        ),
      ],
      // FlexibleSpace containing the image asset
      flexibleSpace: SafeArea(
        child: Center(
          child: SizedBox(
            height: 75, // Adjust height as needed
            child: Image.asset(
              'assets/images/1.png', // Path to your image asset
            ),
          ),
        ),
      ),
    );
  }
}

Container _searchField() {
  return Container(
    margin: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20.0), // Adjust the radius as needed
      border: Border.all(
        color: Colors.grey, // Add border color if needed
        width: 1.0, // Add border width if needed
      ),
    ),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search...',
              border: InputBorder.none, // Remove TextField border
              contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Implement search functionality here
          },
        ),
      ],
    ),
  );
}
