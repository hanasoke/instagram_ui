import 'package:flutter/material.dart';

import '../widgets/profile_picture.dart';
import '../widgets/info_item.dart';
import '../widgets/tab_item.dart';
import '../widgets/story_item.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Row(
          children: [
            Text(
              "Miku",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: Colors.black,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                ProfilePicture(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InfoItem("Posts", "900"),
                      InfoItem("Followers", "200K"),
                      InfoItem("Following", "20"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "miku",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text:
                    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                style: TextStyle(
                  color: Colors.black,
                ),
                children: [
                  TextSpan(
                    text: '#manila',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  TextSpan(
                    text: '#jakarta',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  TextSpan(
                    text: '#tokyo',
                    style: TextStyle(
                      color: Colors.amber,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: RichText(
              text: TextSpan(
                text: "www.random.com",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Edit Profile",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("Tokyo"),
                  StoryItem("Osaka"),
                  StoryItem("Singapore"),
                  StoryItem("Manila"),
                  StoryItem("Beijing"),
                  StoryItem("Kuala Lumpur"),
                  StoryItem("Jakarta"),
                  StoryItem("Hongkong"),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TabItem(Icons.grid_on_outlined, true),
              TabItem(Icons.person_pin_outlined, false),
            ],
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: 213,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) => Image.network(
              "https://picsum.photos/id/170/200/200",
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 4,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter_rounded),
            label: "Movie",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
