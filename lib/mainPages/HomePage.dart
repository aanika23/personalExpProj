// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            physics: AlwaysScrollableScrollPhysics(),
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/homePageBG.jpg'),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              print("Pic Pressed");
                            },
                            child: CircleAvatar(
                              minRadius: 25,
                              backgroundImage:
                              AssetImage('assets/images/profilePicSample.JPG'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Current Balance",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25, bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            r'$45,000',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 20, 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // Shopping
                          Container(
                            width: 120,  // Fixed width for the square
                            height: 120, // Fixed height for the square
                            decoration: BoxDecoration(
                                color: Colors.cyan.shade500,  // Background color
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Row with an icon and a text
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.shopping_cart_outlined,  // The icon to display
                                      color: Colors.white,
                                      size: 30,
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),  // Space between the icon and text
                                Text(
                                  'Shopping',  // Text next to the icon
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                // Multi-line text below the icon and row
                                SizedBox(height: 5),  // Add some spacing between the rows
                                Text(
                                  r'$450.56', // Multiple lines of text
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10), // Space between boxes
                          // Food & Drinks
                          Container(
                            width: 120,  // Fixed width for the square
                            height: 120, // Fixed height for the square
                            decoration: BoxDecoration(
                                color: Colors.deepOrange.shade300,  // Background color
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Row with an icon and a text
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.fastfood,  // The icon to display
                                      color: Colors.white,
                                      size: 30,
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),  // Space between the icon and text
                                Text(
                                  'Food & Drinks',  // Text next to the icon
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                // Multi-line text below the icon and row
                                SizedBox(height: 5),  // Add some spacing between the rows
                                Text(
                                  r'$50.88', // Multiple lines of text
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10), // Space between boxes
                          // Bills & Util
                          Container(
                            width: 120,  // Fixed width for the square
                            height: 120, // Fixed height for the square
                            decoration: BoxDecoration(
                                color: Colors.pink.shade700,  // Background color
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Row with an icon and a text
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.house,  // The icon to display
                                      color: Colors.white,
                                      size: 30,
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),  // Space between the icon and text
                                Text(
                                  'Bills & Util',  // Text next to the icon
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                // Multi-line text below the icon and row
                                SizedBox(height: 5),  // Add some spacing between the rows
                                Text(
                                  r'$5600.50', // Multiple lines of text
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10), // Space between boxes
                          // Other
                          Container(
                            width: 120,  // Fixed width for the square
                            height: 120, // Fixed height for the square
                            decoration: BoxDecoration(
                                color: Colors.grey.shade700,  // Background color
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // Row with an icon and a text
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.miscellaneous_services,  // The icon to display
                                      color: Colors.white,
                                      size: 30,
                                    ),

                                  ],
                                ),
                                SizedBox(height: 5),  // Space between the icon and text
                                Text(
                                  'Others',  // Text next to the icon
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                // Multi-line text below the icon and row
                                SizedBox(height: 5),  // Add some spacing between the rows
                                Text(
                                  r'$500.00', // Multiple lines of text
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 20, 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 18,
                        fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(15, 10, 20, 15),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    columns: [
                      DataColumn(
                        label: Text('Purpose', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Amount', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                      DataColumn(
                        label: Text('Date', style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
                    rows: [
                      DataRow(cells: [
                        DataCell(Text('Chocolate')),
                        DataCell(Text(r'$8.55')),
                        DataCell(Text('10/02/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Coffee')),
                        DataCell(Text(r'$6.55')),
                        DataCell(Text('10/01/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rent')),
                        DataCell(Text(r'$1800')),
                        DataCell(Text('09/30/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rent')),
                        DataCell(Text(r'$1800')),
                        DataCell(Text('09/30/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rent')),
                        DataCell(Text(r'$1800')),
                        DataCell(Text('09/30/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rent')),
                        DataCell(Text(r'$1800')),
                        DataCell(Text('09/30/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rent')),
                        DataCell(Text(r'$1800')),
                        DataCell(Text('09/30/2024')),
                      ]),
                      DataRow(cells: [
                        DataCell(Text('Rent')),
                        DataCell(Text(r'$1800')),
                        DataCell(Text('09/30/2024')),
                      ]),
                    ],
                  )
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
