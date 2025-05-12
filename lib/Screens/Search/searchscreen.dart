import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();

  Searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50),
          Row(
            children: [
              SizedBox(width: 10),
              Container(
                height: 36,
                width: 363,

                decoration: BoxDecoration(
                  color: Color(0XFF262626),
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      hintText: "search",
                      prefixIcon: Icon(Icons.search),
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color(0XFF8E8E93),
                        fontWeight: FontWeight.normal,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Icon(
                CupertinoIcons.slider_horizontal_3,
                color: Colors.white,
                size: 30,
              ),

            ],
          ),
          Row(
            children: [
              Container(
                  height: 32,
                  width: 75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(3),
                  ),
                child: Row(
                  children: [
                    
                    ]
                ),
              ),
              SizedBox(width: 10),
            ],
          ),
        ],
      ),
    );
  }
}
