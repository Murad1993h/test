

class User {
  int?  id;
  String? name;
  String? email;
  String? password;
  String? Phone;
  String? token;


  User({
    this.id,
    this.name,
    this.email,
    this.password,
    this.Phone,
    this.token,

});

  factory User.fronJson(Map<String, dynamic>json){
    return User(
      id: json['user']['id'],
      name: json['user']['name'],
      email: json['user']['email'],
      password: json['user']['password'],
     // phone: json['user']['phone'],
      token: json['user']['token'],
    );
  }

}