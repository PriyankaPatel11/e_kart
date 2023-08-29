import 'package:e_kart/models/product_model/product_model.dart';
import 'package:e_kart/widgets/top_title/toptitle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
   const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 TopTitle(subtitle: "", title: "E-Kart"),
                TextField(
                  decoration: InputDecoration(hintText: "Search......"),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Text(
            "Categories",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: categoriesList
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 13.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: SizedBox(
                            height: 100,
                            width: 100,
                            child: Image.network(e),
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Top Selling",
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                primary: false,
                itemCount: bestProduct.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                      childAspectRatio: 0.9,
                      crossAxisCount: 2),
                  itemBuilder: ((context, index) {
                    ProductModel singleProduct = bestProduct[index];
                    return Container(
                      
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(12.0)
                      ),
                      child: Column(
                        children: [
                          Image.network(
                            singleProduct.image,
                            height: 60,
                            width: 60,
                          ),
                          const SizedBox(
                    height: 12.0,
                    ),
                    Text(
                      singleProduct.name,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                    height: 12.0,
                    ),
                    SizedBox(
                      height: 45,
                      width: 140,
                      child: OutlinedButton(
                        onPressed: () {},                                            
                        child: Text("Buy",
                        style: TextStyle(color: Colors.red),),
                        ),
                    ), 
                        ],
                      ),
                    );
                  })),
            ),
          )
        ],
      ),
    );
  }
}

List<String> categoriesList = [
  "https://cdn.pixabay.com/photo/2013/07/13/01/22/vegetables-155616_1280.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAxsxQnmwZrtQhPLFe-qMKRr8H7uxnbEtDPw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROeIDhiiXZkdnq4uSTL1Po_hlekexx01wF1Q&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROcD-KNo0rCecSgVtkrhX_1w2fY5Lpm9Nxmw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGmEJOmKQ6WlP3sh1j160guNvVNmh_2lckdg&usqp=CAU",
  "https://cdn.pixabay.com/photo/2013/07/13/01/22/vegetables-155616_1280.png",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAxsxQnmwZrtQhPLFe-qMKRr8H7uxnbEtDPw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROeIDhiiXZkdnq4uSTL1Po_hlekexx01wF1Q&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROcD-KNo0rCecSgVtkrhX_1w2fY5Lpm9Nxmw&usqp=CAU",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGmEJOmKQ6WlP3sh1j160guNvVNmh_2lckdg&usqp=CAU",


];

List<ProductModel> bestProduct = [
  ProductModel(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp60hT5rncbW-Bmr-2RghnXOsnr3tGHNX7Ug&usqp=CAU",
    id: "1",
    price: "100",
    name: "Banana",
    description: "Banana is good for helth",
    status: "pending...",
    isFavourite: false,
  ),
  ProductModel(
    image:
        "data:image/jpeg;base64,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",
    id: "2",
    price: "100",
    name: "Guava",
    description: "Banana is good for helth",
    status: "pending...",
    isFavourite: false,
  ),
  ProductModel(
    image:
        "",
    id: "3",
    price: "100",
    name: "Banana",
    description: "Banana is good for helth",
    status: "pending...",
    isFavourite: false,
  ),
  ProductModel(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp60hT5rncbW-Bmr-2RghnXOsnr3tGHNX7Ug&usqp=CAU",
    id: "19",
    price: "100",
    name: "Banana",
    description: "Banana is good for helth",
    status: "pending...",
    isFavourite: false,
  ),
  ProductModel(
    image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRp60hT5rncbW-Bmr-2RghnXOsnr3tGHNX7Ug&usqp=CAU",
    id: "13",
    price: "100",
    name: "Banana",
    description: "Banana is good for helth",
    status: "pending...",
    isFavourite: false,
  ),
  ProductModel(
    image:
        "data:image/jpeg;base64,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",
    id: "14",
    price: "100",
    name: "Banana",
    description: "Banana is good for helth",
    status: "pending...",
    isFavourite: false,
  ),
];
