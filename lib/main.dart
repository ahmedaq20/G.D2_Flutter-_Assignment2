import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double number =1;
  double mailprice =21;
  bool ischecked1=false;
  bool ischecked2=false;
  bool ischecked3=false;
  bool ischecked4=false;
  bool ischecked5=false;
  bool ischecked6=false;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: ListView(children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft:Radius.circular(15),bottomRight:Radius.circular(15)),
            child: Image.network("https://images.unsplash.com/photo-1590947132387-155cc02f3212?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,

            ),
          ),

          Padding(
           padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 20,),
              Text("بيتزا بالخضار",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text("بيتزا بالخضار مميزة",style: TextStyle(
                    color: Colors.grey
                )),
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:Border.all(color: Colors.grey,width: 2) ,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(children: [
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.add),
                        color: Colors.blueAccent,
                        onPressed: () {
                          setState(() {
                       if(number<10) {
                         number++;
                       }
                          });
                        },
                      ),
                      Text(number.toString(),style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.remove),
                        color: Colors.blueAccent,
                        onPressed: () {
                          setState(() {
                            if(number>1){
                            number--;
                            }
                          });
                        },
                      ),


                    ],),
                  ),

                  Row(
                    children: [
                      Text("   د.ا ",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                      Text((mailprice*number).toString(),style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
          Divider(
            color: Colors.grey,
            thickness: 4,
            indent: 0,
            endIndent: 0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text("(اختياري)",style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      SizedBox(width: 5,),

                      Text("اختيارك من الحجم :",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("اختار من القائمة"),
                  SizedBox(height: 15,),

                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: (){
                              ischecked1 =!ischecked1;
                              setState(() {});

                            },
                            child: Icon(ischecked1?Icons.check_box_outlined:Icons.check_box_outline_blank)),

                        // SizedBox(width: 435,),
                        Text("صنف 1"),
                      ],),
                  ),
                  Divider(
                    color: Colors.grey,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: (){
                                ischecked3 =!ischecked3;
                                if(ischecked3==true){
                                  mailprice=mailprice+9;
                                print(number);
                                }else{
                                  mailprice=mailprice-9;
                                }
                                setState(() {

                                });

                              },
                                child: Icon(ischecked3?Icons.check_box_outlined:Icons.check_box_outline_blank)),
                         //   Icon(Icons.check_box_outline_blank),
                            Text("(+9.00 د.ا)"),
                          ],
                        ),
                        Text("صنف 2"),
                      ],),
                  ),
                  SizedBox(height: 20,),

                  Divider(
                    color: Colors.grey,
                    thickness: 2, 
                    indent: 10,
                    endIndent: 10,
                  ),


                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: (){
                                  ischecked4 =!ischecked4;
                                  if(ischecked4==true){
                                    mailprice=mailprice+9;
                                    print(number);
                                  }else{
                                    mailprice=mailprice-9;
                                  }
                                  setState(() {

                                  });

                                },
                                child: Icon(ischecked4?Icons.check_box_outlined:Icons.check_box_outline_blank)),
                            Text("(+9.00 د.ا)"),
                          ],
                        ),
                        Text("صنف 3"),
                      ],),
                  ),


                ],
              ),
            ),
          ),
          Divider(
            color: Colors.grey, // Set the color of the line
            thickness: 4, // Set the thickness of the line
            indent: 0, // Set the left indentation
            endIndent: 0, // Set the right indentation
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text("(اختياري)",style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),),
                      SizedBox(width: 5,),

                      Text("اختيارك من الاضافات :",style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold
                      ),),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("اختار من القائمة"),
                  SizedBox(height: 15,),

                  Container(
                  padding: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap: (){
                              ischecked2 =!ischecked2;
                              setState(() {});

                            },
                            child: Icon(ischecked2?Icons.check_box_outlined:Icons.check_box_outline_blank)),

                       // SizedBox(width: 435,),
                        Text("صنف 1"),
                      ],),
                  ),
                  Divider(
                    color: Colors.grey, // Set the color of the line
                    thickness: 2, // Set the thickness of the line
                    indent: 10, // Set the left indentation
                    endIndent: 10, // Set the right indentation
                  ),
                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: (){
                                  ischecked5 =!ischecked5;
                                  if(ischecked5==true){
                                    mailprice=mailprice+9;
                                    print(number);
                                  }else{
                                    mailprice=mailprice-9;
                                  }
                                  setState(() {

                                  });

                                },
                                child: Icon(ischecked5?Icons.check_box_outlined:Icons.check_box_outline_blank)),
                            Text("(+9.00 د.ا)"),
                          ],
                        ),
                        Text("صنف 2"),
                      ],),
                  ),
                  SizedBox(height: 20,),

                  Divider(
                    color: Colors.grey, // Set the color of the line
                    thickness: 2, // Set the thickness of the line
                    indent: 10, // Set the left indentation
                    endIndent: 10, // Set the right indentation
                  ),


                  SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.only(left: 10,right: 10),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: (){
                                  ischecked6 =!ischecked6;
                                  if(ischecked6==true){
                                    mailprice=mailprice+9;
                                    print(number);
                                  }else{
                                    mailprice=mailprice-9;
                                  }
                                  setState(() {

                                  });

                                },
                                child: Icon(ischecked6?Icons.check_box_outlined:Icons.check_box_outline_blank)),
                            Text("(+9.00 د.ا)"),
                          ],
                        ),
                        Text("صنف 3"),
                      ],),
                  ),


                ],
              ),
            ),
          ),
          SizedBox(height: 25,),
          Container(
            width: 70,
            margin: EdgeInsets.only(left: 15,right: 15 ,bottom: 15),
            padding: EdgeInsets.only(left: 5,right: 5
            ),
            child: ElevatedButton(

                onPressed: () {  },
                child:Row(
               //   mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(
                      children: [
                        Text("   د.ا ",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),),
                        Text((mailprice*number).toString(),style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                   // SizedBox(width: 350,),
                  Text("اضافة الى السلة"),
                ],) ,
            ),
          ),

        ]),

      ),
    );
  }
}