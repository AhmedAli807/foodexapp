class RestaurantWithName {
  final bool status;
  final List<Data>data;

  const RestaurantWithName({
    required this.status,
    required this.data,
  });
  factory RestaurantWithName.fromJson(jsonData){
    return RestaurantWithName(status: jsonData['status'], data: jsonData['data']);
  }
}

class Data {
  final int id;
  final String name;
  final String description;
  final String price;
  final String restaurantId;
  final String cartId;
  final String pic;
  final String createdAt;
  final String updatedAt;

  const Data({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.restaurantId,
    required this.cartId,
    required this.pic,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Data.fromJson(jsonData) {
    return Data(
        id: jsonData['id'],
        name: jsonData['name'],
        description: jsonData['description'],
        price: jsonData['price'],
        restaurantId: jsonData['restaurantId'],
        cartId: jsonData['cartId'],
        pic: jsonData['pic'],
        createdAt: jsonData['createdAt'],
        updatedAt: jsonData['updatedAt']);
  }
}
