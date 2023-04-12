import 'package:flutter/material.dart';
import 'package:mega/constants/style.dart';
import 'package:mega/helpers/responsiveness.dart';

import 'custom_text.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 100,
                    height: 50,
                    fit: BoxFit.contain,
                  ),
                )
              ],
            )
          : IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                key.currentState?.openDrawer();
              }),
      elevation: 0,
      title: Row(
        children: [
          const Visibility(
              child: CustomText(
            text: "Dash",
            color: Colors.black,
            size: 20,
            weight: FontWeight.bold,
          )),
          Expanded(child: Container()),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              )),
          Stack(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                    color: Colors.black,
                  )),
              Positioned(
                  top: 7,
                  right: 7,
                  child: Container(
                    width: 12,
                    height: 12,
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        color: bluecolor,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: light, width: 2)),
                  ))
            ],
          ),
          Container(
            width: 1,
            height: 22,
            color: Colors.black,
            
          ),
          
           SizedBox(
            width: 200,
            height: 30,
            child: TextField(
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 13
              ),
              decoration: InputDecoration(
                hintText: 'Search',
                contentPadding: const EdgeInsets.symmetric(vertical: 3),
                
                border: OutlineInputBorder(
                borderSide: const BorderSide(
                color: Colors.grey,
                width: 1
                
                
              ),
              
              borderRadius: BorderRadius.circular(40),
              
              
              
              
            ),
            
            filled: true,
            fillColor: const Color.fromARGB(255, 239, 239, 239),
            prefixIcon: const Icon(Icons.search, size: 13,),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
            child: Container(
              padding: const EdgeInsets.all(2),
              margin: const EdgeInsets.all(2),
              child: CircleAvatar(
                  backgroundColor: light,
                  child: const Icon(
                    Icons.person,
                    color: Colors.black,
                    
                  )),
            ),
          ),
        ],
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: Colors.transparent,
    );
