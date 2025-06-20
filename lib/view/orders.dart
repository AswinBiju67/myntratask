import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myntratask/view/dummydb.dart';
import 'package:myntratask/view/orderdetails.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {

  String? selectedStatus;
  String? selectedTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'My Orders',
          style: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // color: Colors.blue[50],
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 198, 186, 246), Color(0xFFffc1d5)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              height: 75,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("MYNTRA INSIDER",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            )),
                            Text("Earn 10 supercions for every ₹100 purchase",
                            style: GoogleFonts.roboto(
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[600],
                            )),
                      ],
                    ),
                
                    Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFff3f6c),
                        borderRadius: BorderRadius.circular(10),
                  
                      ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Enroll \n Now",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Search in orders",
                          prefixIcon: Icon(Icons.search, color: Colors.grey[600]),
                          contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.filter_list, color: Colors.grey[600]),
                            onPressed: () {
                              _showFilterBottomSheet(context);
                            },
                          ),
                          Text("FILTER",
                              style: GoogleFonts.roboto(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue[50],
               ),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Frequently bought together",
                      style: GoogleFonts.roboto(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                      SizedBox(height: 10,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(Dummydb().sp.length, (index) => Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: Container(
                              height: 95,
                              width: 250,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.grey, width: 1),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset(Dummydb().sp[index], fit: BoxFit.cover,
                                    height: 50,),
                                    SizedBox(width: 10,),
                                    Column( 
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                      Text("Park Avenue ",
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          )),
                                          Text("Body Spray",
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          )),Row(
                                            children: [
                                              Text("₹299",
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600],
                                                textStyle: TextStyle(decoration: TextDecoration.lineThrough, decorationThickness: 2.0, decorationStyle: TextDecorationStyle.solid,)
                                              )),
                                              SizedBox(width: 5,),
                                              Text("₹99",
                                          style: GoogleFonts.roboto(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          )),
                                          SizedBox(width: 5,),
                                          Text("56 OFF",
                                          style: GoogleFonts.roboto(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.orangeAccent
                                          )),
                                            ],
                                          ),
                                          Container(
                                            height: 20,
                                            
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: Text("100-150gm",
                                              style: GoogleFonts.roboto(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600],
                                              )),
                                          )
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
            Column(
              children: List.generate(
                2,
                (index) => Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                      height: 310,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/received-delivery-2063559-1741238.webp",
                                    height: 30,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text("Delivered",
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green,
                                              )),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Container(
                                            height: 10,
                                            width: 2,
                                            color: Colors.grey[600],
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text("Express",
                                              style: GoogleFonts.roboto(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.red,
                                              )),
                                        ],
                                      ),
                                      Text(Dummydb().date[index],
                                          style: GoogleFonts.roboto(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.grey[600],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Orderdetails(index: index))),  
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image.asset(
                                              Dummydb().images[index],
                                              height: 70,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Roadster",
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                  )),
                                              Text(Dummydb().desc[index],
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.grey[600],
                                                  )),
                                              Text("Size : 42",
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.normal,
                                                    color: Colors.grey[600],
                                                  )),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                height: 100,
                                width: double.infinity,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 30,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey[600],
                                    radius: 3,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(Dummydb().returndate[index],
                                      style: GoogleFonts.roboto(
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
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
                                            SizedBox(width: 5,),
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
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              children: [
                                Text("Bought for",
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.grey[600],
                                    )),
                                SizedBox(width: 5,),
                                Text("Aswin",
                                    style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    )),
                              ],
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
            SizedBox(
              height:40,
            ),
            Text("You have reached the end of your orders",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[600],
                )),
          ],
        ),
      ),
    );
  }

void _showFilterBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true, 
    builder: (context) => StatefulBuilder(
      builder: (BuildContext context, StateSetter setModalState) {
        return Container(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom, 
          ),
          child: SingleChildScrollView( 
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Filter Orders",
                    style: GoogleFonts.roboto(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  
                  Text(
                    "Status",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildFilterOption(setModalState, "All", selectedStatus),
                      _buildFilterOption(setModalState, "On the way", selectedStatus),
                      _buildFilterOption(setModalState, "Delivered", selectedStatus),
                      _buildFilterOption(setModalState, "Cancelled", selectedStatus),
                      _buildFilterOption(setModalState, "Returned", selectedStatus),
                    ],
                  ),
                  
                  Divider(height: 30, thickness: 1),
                  
                  Text(
                    "Time",
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildFilterOption(setModalState, "Anytime", selectedTime),
                      _buildFilterOption(setModalState, "Last 30 days", selectedTime),
                      _buildFilterOption(setModalState, "Last 6 months", selectedTime),
                      _buildFilterOption(setModalState, "Last year", selectedTime),
                    ],
                  ),
                  
                  SizedBox(height: 20),
                   Divider(height: 30, thickness: 1),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          setModalState(() {
                          selectedStatus = null;
                          selectedTime = null;
                        });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                           
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey, width: 1),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                            "CLEAR FILTERS",
                            style: GoogleFonts.roboto(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                                                  ),
                          ),
                        ),
                      ),
                       InkWell(
                        onTap: () {
                        
                        },
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                           color: Colors.pink,
                            borderRadius: BorderRadius.circular(10),
                            
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                              "APPLY",
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                                                    ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ),
  );
}

  Widget _buildFilterOption(StateSetter setModalState, String option, String? selectedValue) {
    return InkWell(
      onTap: () {
        setModalState(() {
          if (option == "All" || option == "On the way" || option == "Delivered" || 
              option == "Cancelled" || option == "Returned") {
            selectedStatus = option;
          } else {
            selectedTime = option;
          }
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Icon(
              (selectedValue == option) 
                  ? Icons.check_box 
                  : Icons.check_box_outline_blank,
              color: (selectedValue == option) ? Colors.blue : Colors.grey,
            ),
            SizedBox(width: 10),
            Text(
              option,
              style: GoogleFonts.roboto(
                fontSize: 14,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}