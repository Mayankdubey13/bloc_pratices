import 'dart:async';
import 'dart:ui';

class DeBouncer {
  int? milliseconds;
  VoidCallback? action;
  Timer? _timer;

  DeBouncer({this.milliseconds});

  run(VoidCallback action) {
    if (_timer != null) {
      _timer!.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds!), action);
  }
}
