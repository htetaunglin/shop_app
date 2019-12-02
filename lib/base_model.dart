import 'package:flutter/material.dart';
import 'package:shop_app/utils/view_state.dart';

class BaseModel extends ChangeNotifier {
  ViewState _state = ViewState.Done;

  ViewState get state => _state;

  void notifyState(ViewState viewState) {
    _state = viewState;
    notifyListeners();
  }
}
