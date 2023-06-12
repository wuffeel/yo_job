import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:yo_job/auth/state/auth_notifier.dart';
import 'package:yo_job/repository/auth_repository.dart';
import 'package:yo_job/repository/user_repository.dart';

class Injector extends StatefulWidget {
  final Widget child;

  const Injector({Key? key, required this.child}) : super(key: key);

  @override
  State<Injector> createState() => _InjectorState();
}

class _InjectorState extends State<Injector> {
  late final UserNotifier _authNotifier;
  final AuthRepository _authRepository = AuthRepository();
  final UserRepository _userRepository = UserRepository();

  @override
  void initState() {
    super.initState();

    _authNotifier = UserNotifier(_authRepository, _userRepository);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: _authNotifier,
        ),
      ],
      child: widget.child,
    );
  }
}
