import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempapp/features/bloc/addfavorite_bloc.dart';
import 'package:tempapp/features/favorite/bloc/favorite_bloc.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<FavoriteBloc, FavoriteState>(builder: (context, state) {
        if (state is UsersLoaded) {
          return ListView.builder(
            itemCount: state.users.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(state.users[index].title.toString()),
                subtitle: Text(state.users[index].completed.toString()),
                trailing: BlocBuilder<AddfavoriteBloc, AddfavoriteState>(
                  builder: (context, state) {
                    if (state is AddedFavoriteState) {
                      return InkWell(
                        onTap: () {
                          BlocProvider.of<AddfavoriteBloc>(context)
                              .add(AddThisToFavorite(index, false));
                        },
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        ),
                      );
                    }

                    if (state is NotFavoriteState) {
                      return InkWell(
                        onTap: () {
                          BlocProvider.of<AddfavoriteBloc>(context)
                              .add(AddThisToFavorite(index, true));
                        },
                        child: const Icon(
                          Icons.favorite,
                          color: Colors.grey,
                        ),
                      );
                    }
                    return InkWell(
                      onTap: () {
                        BlocProvider.of<AddfavoriteBloc>(context)
                            .add(AddThisToFavorite(index, true));
                      },
                      child: const Icon(
                        Icons.favorite,
                        color: Colors.grey,
                      ),
                    );
                  },
                ),
                // trailing: InkWell(
                //   onTap: () {
                //     // BlocProvider.of<FavoriteBloc>(context).add();
                //   },
                //   //   child: state.users[index].isFavorite!
                //   //       ? const Icon(
                //   //           Icons.favorite,
                //   //           color: Colors.red,
                //   //         )
                //   //       : Icon(
                //   //           Icons.favorite,
                //   //           color: Colors.grey,
                //   //         ),
                // ),
              );
            },
          );
        }
        return SizedBox();
      }),
    );
  }
}
