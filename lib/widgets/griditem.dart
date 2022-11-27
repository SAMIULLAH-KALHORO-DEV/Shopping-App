import 'package:flutter/material.dart';

import '../pages/product_details.dart';

// ignore: must_be_immutable
class GridList extends StatelessWidget {
  var iconimagelist = [
    'assets/images/product1.png',
    'assets/images/product2.png',
    'assets/images/product3.png',
    'assets/images/product4.png',
    'assets/images/product2.png',
    'assets/images/product4.png',
  ];

  var productname = [
    'Apple Watch -M2',
    'White Tshirt',
    'Nike Shoe',
    'Ear Headphone',
    'White Tshirt',
    'Ear Headphone',
  ];

  List<String> Price = [
    '\$140 ',
    '\$50 ',
    '\$40 ',
    '\$140 ',
    '\$143 ',
    '\$180 ',
  ];

  List<String> Dprice = [
    ' \$200',
    ' \$80',
    ' \$60',
    ' \$170',
    ' \$133',
    ' \$220',
  ];

  List<String> discount = [
    ' 40% OFF',
    ' 20% OFF',
    ' 30% OFF',
    ' 35% OFF',
    ' 20% OFF',
    ' 10% OFF',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: iconimagelist.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 7,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProductDetails()));
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color.fromARGB(7, 0, 0, 0)),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        height: 20,
                        width: 60,
                        child: Center(
                            child: Text(
                          discount[index],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        )),
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset(
                      iconimagelist[index],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            productname[index],
                            style:
                                TextStyle(fontSize: 15, color: Colors.black38),
                          ),
                          SizedBox(height: 4),
                          Row(
                            children: [
                              Text(
                                Price[index],
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                Dprice[index],
                                style: TextStyle(
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 13,
                                    color: Colors.black38),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
