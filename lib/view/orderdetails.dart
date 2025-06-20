import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntratask/view/dummydb.dart';

class Orderdetails extends StatefulWidget {
  int? index;
  Orderdetails({super.key, this.index});

  @override
  State<Orderdetails> createState() => _OrderdetailsState();
}

class _OrderdetailsState extends State<Orderdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Order Details',
              style: GoogleFonts.roboto(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/5-512.webp",
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 5),
                    Text("Help",
                        style: GoogleFonts.roboto(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(Dummydb().images[widget.index!],
                      width: 150, height: 200, fit: BoxFit.cover)),
              SizedBox(height: 20),
              Text(
                "Roadster",
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                Dummydb().desc[0],
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                "Size: 42",
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 181, 118),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/received-delivery-2063559-1741238.webp",
                          height: 30,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Delivered",
                                style: GoogleFonts.roboto(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                            Text(Dummydb().date[widget.index!],
                                style: GoogleFonts.roboto(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey[600],
                        radius: 3,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(Dummydb().returndate[widget.index!],
                          style: GoogleFonts.roboto(
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                height: 67,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          StarRating(
                            size: 25.0,
                            rating: 3,
                            color: Colors.red,
                            borderColor: Colors.grey,
                            allowHalfRating: true,
                            starCount: 5,
                            onRatingChanged: (rating) => setState(() {}),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Rate & Review",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey[600],
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Win Myntra Credit",
                                  style: GoogleFonts.roboto(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                            ],
                          ),
                          Text("Tell us More",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.red,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
               Container(
              height:250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Item that go well with this item",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(Dummydb().pn.length, (index) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              height: 200,
                              width: 160,
                             
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey, width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    
                                    SizedBox(width: 10,),
                                    Column( 
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(Dummydb().pn[index], fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,),
                                    SizedBox(height: 10,),
                                      Row(
                                        
                                        children: [
                                          Text("Roadster ",
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              )),
                                              SizedBox(width: 55,),
                                              Icon(Icons.favorite, color: Colors.red, size: 14,),
                                        ],
                                      ),
                                          Text("The Lifestyle Co.",
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.grey[600],
                                          )),Row(
                                            children: [
                                             
                                              Text("₹714",
                                          style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )),
                                          SizedBox(width: 5,),
                                           Text("₹1299",
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600],
                                                textStyle: TextStyle(decoration: TextDecoration.lineThrough, decorationThickness: 2.0, decorationStyle: TextDecorationStyle.solid,)
                                              )),
                                          SizedBox(width: 5,),
                                          Text("(45 OFF)",
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red
                                          )),
                                            ],
                                          ),
                                          
                                    ],)
                                  ],
                                ),
                              ),
                            ),
                          ),),
                        ),
                      )
                 ],),
               ),
            ),
              SizedBox(height: 20),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Delivery Address",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text("Aswin",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                              SizedBox(width: 10),
                          Container(
                            height: 10,
                            width: 2,
                            color: Colors.grey[600],
                          ),
                          SizedBox(width: 10),
                          Text("1285697436",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text("State Highway Bengaluru, Karnataka 560068",
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 110,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total Item Price",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                          Row(
                            children: [
                              Text(Dummydb().price[widget.index!],
                                  style: GoogleFonts.roboto(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  )),
                                  SizedBox(width: 5),
                                  InkWell(
                                    onTap: () {
                                      showModalBottomSheet(context: context, builder: (context) => Container(
                                        height: 370,
                                        width: double.infinity,
                                        color: Colors.white,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Payment Information",
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 20,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black,
                                                    )),
                                                    CircleAvatar(radius: 40,
                                                    backgroundImage: AssetImage(Dummydb().images[widget.index!]),)
                                                ],
                                              ),
                                              SizedBox(height: 20),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("MRP",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                )),
                                                Text("₹2999",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                )),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Discount",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                )),
                                                Text("-₹999",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                )),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                height: 2,
                                                width: double.infinity,
                                                color: Colors.grey[300],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Discounted Price",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                )),
                                                Text("₹2000",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                )),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                height: 2,
                                                width: double.infinity,
                                                color: Colors.grey[300],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Coupon discount",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                )),
                                                Text("-₹500",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                )),
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                height: 2,
                                                width: double.infinity,
                                                color: Colors.grey[300],
                                              ),
                                              SizedBox(height: 10),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text("Total Paid",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey[600],
                                                )),
                                                Text(Dummydb().price[widget.index!],
                                                style: GoogleFonts.roboto(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                )),
                                                
                                                ],
                                              ),
                                              SizedBox(height: 10),
                                              Container(
                                                height: 40,
                                                color: Colors.grey[200],
                                                width: double.infinity,
                                                child: Row(
                            children: [
                              Image.asset("assets/images/2-512.webp",
                                  height: 30, width: 30, fit: BoxFit.cover),
                                  SizedBox(width: 10),
                                  Text("Pay on delivery",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                    )),
                            ],
                          ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),);
                                    },
                                    child: Icon(Icons.arrow_drop_down,
                                        size: 15,
                                        color: Colors.red),
                                  ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Image.asset("assets/images/2-512.webp",
                                  height: 30, width: 30, fit: BoxFit.cover),
                                  SizedBox(width: 10),
                                  Text("Pay on delivery",
                                    style: GoogleFonts.roboto(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[600],
                                    )),
                            ],
                          ),
                        ),
                      ),
                     
                    ],
                  ),
                ),
              ),
               SizedBox(height: 10),
               Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text("Sold by: Truenet Commerce ",
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          )),
                          SizedBox(height: 10),
                          Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey[500]!),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Text("Get Invoice",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey[600],
                                  )),
                              ),
                            ),
                          ),
                    ],
                  ),
                ),
               ),
               SizedBox(height: 20),
               Container(
                height: 110,
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Updates sent to",
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          )),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.phone, color: Colors.grey[600], size: 14),
                              SizedBox(width: 10),
                              Text("1245789632",style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),)
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Icon(Icons.email_outlined, color: Colors.grey[600], size: 14),
                              SizedBox(width: 10),
                              Text("aswin@gmail.com",style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),)
                            ],
                          ),
                    ],
                  ),
                ),
               )
            ],
          ),
        ),
      ),
    );
  }
}
