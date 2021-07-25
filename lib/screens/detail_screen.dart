import 'package:flutter/material.dart';
import 'package:myfood_app/widget/mybutton.dart';

class DetailScreen extends StatelessWidget {
  Widget _buildSingleDetailText(
      {context,
      String title,
      String subsTitle,
      String tralingTitle,
      String tralingSubsTitle}) {
    return Container(
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
              ),
              Text(
                tralingTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                subsTitle,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 22,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                tralingSubsTitle,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {



    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xfffef0f7),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
      ),
      body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    color: Color(0xfffef0f7),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    color: Color(0xfff8f8f8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 130,
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "Talco Mexico",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Le Carioole",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Container(
                          height: 100,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "\$50",
                                    style: TextStyle(
                                        color: Theme.of(context).accentColor,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w900),
                                  ),
                                  Container(
                                    height: 35,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.lightBlue[100],
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.add,
                                            size: 30,
                                            color:
                                                Theme.of(context).accentColor,
                                          ),
                                        ),
                                        Text(
                                          "1",
                                          style: TextStyle(
                                              color:
                                                  Theme.of(context).accentColor,
                                              fontSize: 25,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        GestureDetector(
                                          onTap: () {},
                                          child: Icon(
                                            Icons.remove,
                                            size: 30,
                                            color:
                                                Theme.of(context).accentColor,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        _buildSingleDetailText(
                          context: context,
                          title: "Weight",
                          subsTitle: "120Kg",
                          tralingTitle: "Mix Together",
                          tralingSubsTitle: "Milk Egg , Dip",
                        ),
                        _buildSingleDetailText(
                          context: context,
                          title: "Calories",
                          subsTitle: "420 cal",
                          tralingTitle: "Chicken strip, veggies",
                          tralingSubsTitle: "Mixture",
                        ),
                       Container(
                         height: 60.0,
                         alignment: Alignment.center,
                         decoration: BoxDecoration(

                           border: Border.all(
                             color: Colors.blue,
                             width: 2.0,
                           ),
                           borderRadius: BorderRadius.circular(12.0,),
                         ),
                         margin: EdgeInsets.symmetric(
                           horizontal:24.0 ,
                           vertical:24.0,
                         ),
                          child: Text(
                              "CHECKOUT",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                       ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              left: 100,
              child: Image(
                  height: 170,
                  width: 200,
                  image: AssetImage("images/pastacheese.png")),
            ),
          ],
        ),
      ),
    );
  }


}
