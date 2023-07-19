class Order {
  bool? status;
  List<Data>? data;

  Order({this.status, this.data});

  Order.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  int? foodId;
  String? quantity;
  int? day;
  int? month;
  int? year;
  String? time;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.foodId,
        this.quantity,
        this.day,
        this.month,
        this.year,
        this.time,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    foodId = json['food_id'];
    quantity = json['quantity'];
    day = json['day'];
    month = json['month'];
    year = json['year'];
    time = json['time'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['food_id'] = this.foodId;
    data['quantity'] = this.quantity;
    data['day'] = this.day;
    data['month'] = this.month;
    data['year'] = this.year;
    data['time'] = this.time;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}