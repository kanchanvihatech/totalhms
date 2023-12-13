class Password_Reset {
  Password_Reset({
    this.error,
    this.data,
   });

  Password_Reset.fromJson(dynamic json) {
    error = json['error'];
    data = json['data'];

  }
  bool? error;
  String? data;


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['error'] = error;
    map['data'] = data;

    return map;
  }

}