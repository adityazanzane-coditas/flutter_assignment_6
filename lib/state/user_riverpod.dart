import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_app/data/user_data.dart';

final userRiverpod =
    StateNotifierProvider<UserProvider, List<User>>((ref) => UserProvider());

class UserProvider extends StateNotifier<List<User>> {
  UserProvider()
      : super([
          User(
            name: 'Aditya Zanzane',
            email: 'aditya.zanzane@coditas.com',
            phone: '9823875384',
            address: 'PCMC, Pune',
            avatar: '',
          ),
          User(
            name: 'Yash Wadatkar',
            email: 'yash.wadatkar@coditas.com',
            phone: '8269875249',
            address: 'Sawangi, Wardha',
            avatar: '',
          ),
          User(
            name: 'Mayur Shelar',
            email: 'mayur.shelar@coditas.com',
            phone: '9881723490',
            address: 'Wagholi, Pune',
            avatar: '',
          ),
          User(
            name: 'Gaurav Wani',
            email: 'gaurav.wani@coditas.com',
            phone: '7749569023',
            address: 'Gurudatta Society, Jalgoan',
            avatar: '',
          ),
          User(
            name: 'Siddhant Nilange',
            email: 'siddhant.nilange@coditas.com',
            phone: '8662364538',
            address: 'Parbhani',
            avatar: '',
          ),
        ]);

  void addUser(User newUser) {
    state.add(newUser);
  }

  void updateUser(int index, User updatedUser) {
    state[index] = updatedUser;
  }

  void deleteUser(int index) {
    state = List.from(state)..removeAt(index);
  }
}
