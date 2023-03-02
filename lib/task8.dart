class User {
  String email;

  User(this.email);
}

class AdminUser extends User with EmailMixin {
  AdminUser(String email) : super(email);
}

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

mixin EmailMixin on User {
  String getMailSystem() {
    return email.split('@').last;
  }
}

class UserManager<T extends User> {
  List<T> userList = [];

  void addUser(T user) {
    userList.add(user);
  }

  void removeUser(T user) {
    userList.remove(user);
  }

  void printEmails() {
    for (var user in userList) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    }
  }
}
