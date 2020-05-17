import 'package:flutter/material.dart';
class Products extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ProductsState();
  }

}
class ProductsState extends State<Products>{
  var product_list=[
    {
      'id':1,
      'name':'پراگرمر',
      'picture':'images/cat/5000-1.png',
      'price':100,
    },
    {
      'id':2,
      'name':'پراگرمر',
      'picture':'images/cat/5000-1.png',
      'price':100,
    },
    {
      'id':3,
      'name':'پراگرمر',
      'picture':'images/cat/5000-1.png',
      'price':100,
    },
    {
      'id':4,
      'name':'پراگرمر',
      'picture':'images/cat/5000-1.png',
      'price':100,
    },
    {
      'id':5,
      'name':'پراگرمر',
      'picture':'images/cat/5000-1.png',
      'price':100,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_list.length,
      gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_prod(
          id: product_list[index]['id'],
          prod_name:product_list[index]['name'],
          prod_picture:product_list[index]['picture'],
          prod_price:product_list[index]['price'],
        );
      },
    );
  }

}
class Single_prod extends StatelessWidget{
  final prod_name;
  final id;
  final prod_picture;
  final prod_price;

  const Single_prod({Key key,this.id, this.prod_name, this.prod_picture, this.prod_price}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(20.0),
        child:Card(
          child: Hero(
              tag: this.id,
              child:InkWell(onTap: (){},
                child: GridTile(
                  footer: Container(
                      color:Colors.white70,
                      child:ListTile(
                        leading: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold),),
                        title: Text('تومان$prod_price',style: TextStyle(color: Colors.pink),),
                      )
                  ),
                  child: Image.asset(prod_picture,fit:BoxFit.cover,),
                ),
              )
          ),
        ),
    );
  }

}


void main(){
  seyHello('maryam','zahra');
}
seyHello([a,b='negin',c='mina']){
  print('hello $a & $b $c');
}
