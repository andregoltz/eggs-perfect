import 'package:flutter/material.dart';
import 'package:perfect_eggs/blocs/app.bloc.dart';
import 'package:provider/provider.dart';

class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<AppBloc>(context);
    return bloc.state == "cooking" ? progress(bloc, context) : const SizedBox();
  }

  Widget progress(bloc, context) {
    return Column(
      children: [
        Text(
          ((bloc.time - bloc.seconds) / 60).toStringAsFixed(2),
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 45,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: LinearProgressIndicator(
            value: bloc.percent / 100,
            backgroundColor: Colors.transparent,
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
