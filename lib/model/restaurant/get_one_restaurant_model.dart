class GetOneRestaurantModel {
  bool? status;
  List<Data>? data;

  GetOneRestaurantModel({this.status, this.data});

  GetOneRestaurantModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add( Data.fromJson(v));
      });
    }
  }


}

class Data {
  int? id;
  String? pic;
  String? coverPhoto;
  String? name;
  String? deliveryTime;
  String? tags1;
  String? tags2;
  String? verified;
  String? lat;
  String? long;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
        this.pic,
        this.coverPhoto,
        this.name,
        this.deliveryTime,
        this.tags1,
        this.tags2,
        this.verified,
        this.lat,
        this.long,
        this.createdAt,
        this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pic = json['pic'];
    coverPhoto = json['cover_photo'];
    name = json['name'];
    deliveryTime = json['delivery_time'];
    tags1 = json['tags1'];
    tags2 = json['tags2'];
    verified = json['verified'];
    lat = json['lat'];
    long = json['long'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }


}