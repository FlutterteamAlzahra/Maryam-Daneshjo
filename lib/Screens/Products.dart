class Products{
  String _imageUrl;
  String _price;
  String _productName;
  int _id;

  Products(this._imageUrl, this._price, this._productName, this._id);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get productName => _productName;

  set productName(String value) {
    _productName = value;
  }

  String get price => _price;

  set price(String value) {
    _price = value;
  }

  String get imageUrl => _imageUrl;

  set imageUrl(String value) {
    _imageUrl = value;
  }


}
