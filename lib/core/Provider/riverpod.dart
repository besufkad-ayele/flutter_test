import 'package:chapter_one/core/Provider/model/riverpod_button_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final riverpodFollowingButton =
    ChangeNotifierProvider<RiverpodButtonState>((ref) {
      return RiverpodButtonState();
    });
