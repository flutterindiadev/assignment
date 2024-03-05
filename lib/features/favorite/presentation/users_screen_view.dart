import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempapp/features/bloc/addfavorite_bloc.dart';
import 'package:tempapp/features/favorite/bloc/favorite_bloc.dart';
import 'package:tempapp/features/favorite/presentation/users_screen.dart';

import '../../../injection_container.dart';

class UsersScreenview extends StatelessWidget {
  const UsersScreenview({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FavoriteBloc>(
            create: (context) => FavoriteBloc(sl())..add(GetUsers())),
        BlocProvider<AddfavoriteBloc>(create: (context) => AddfavoriteBloc())
      ],
      child: const UserScreen(),
    );
  }
}
