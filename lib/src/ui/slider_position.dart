/*
 * Copyright 2018, 2019, 2020 Dooboolab.
 *
 * This file is part of Flutter-Sound.
 *
 * Flutter-Sound is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License version 3 (LGPL-V3), as published by
 * the Free Software Foundation.
 *
 * Flutter-Sound is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with Flutter-Sound.  If not, see <https://www.gnu.org/licenses/>.
 */


import 'package:flutter/foundation.dart';

///
class SliderPosition extends ChangeNotifier {
  /// The current position of the slider.
  Duration _position = Duration.zero;

  /// The max position of the slider.
  Duration maxPosition = Duration.zero;

  bool _disposed = false;

  ///
  set position(Duration position) {
    _position = position;

    if (!_disposed) notifyListeners();
  }

  void dispose() {
    _disposed = true;
    super.dispose();
  }

  ///
  Duration get position {
    return _position;
  }
}
