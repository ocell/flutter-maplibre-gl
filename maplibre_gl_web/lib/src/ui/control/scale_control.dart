import 'package:maplibre_gl_web/src/interop/interop.dart';
import 'package:maplibre_gl_web/src/ui/map.dart';

/// Dart wrapper for ScaleControl options.
class ScaleControlOptions extends JsObjectWrapper<ScaleControlOptionsJsImpl> {
  /// Maximum width of the scale control in pixels.
  num get maxWidth => jsObject.maxWidth;

  /// Unit of the distance (`'imperial'`, `'metric'` or `'nautical'`).
  String get unit => jsObject.unit;

  factory ScaleControlOptions({
    num? maxWidth,
    String? unit,
  }) =>
      ScaleControlOptions.fromJsObject(ScaleControlOptionsJsImpl(
        maxWidth: maxWidth,
        unit: unit,
      ));

  /// Creates a new ScaleControlOptions from a [jsObject].
  ScaleControlOptions.fromJsObject(super.jsObject) : super.fromJsObject();
}

/// A `ScaleControl` control displays the ratio of a distance on the map
/// to the corresponding distance on the ground.
///
/// @implements {IControl}
/// @param {Object} [options]
/// @param {number} [options.maxWidth='100'] The maximum length of the scale control in pixels.
/// @param {string} [options.unit='metric'] Unit of the distance (`'imperial'`, `'metric'` or `'nautical'`).
/// @example
/// var scale = new maplibregl.ScaleControl({maxWidth: 80, unit: 'imperial'});
/// map.addControl(scale);
class ScaleControl extends JsObjectWrapper<ScaleControlJsImpl> {
  ScaleControlOptions get options =>
      ScaleControlOptions.fromJsObject(jsObject.options);

  factory ScaleControl(ScaleControlOptions options) =>
      ScaleControl.fromJsObject(ScaleControlJsImpl(options.jsObject));

  /// Add this control to the given [map].
  dynamic onAdd(MapLibreMap map) => jsObject.onAdd(map.jsObject);

  /// Remove this control from the map.
  void onRemove() => jsObject.onRemove();

  /// Return the default position for this control.
  String getDefaultPosition() => jsObject.getDefaultPosition();

  /// Set the scale's unit of distance (`'imperial'`, `'metric'` or `'nautical'`).
  void setUnit(String unit) => jsObject.setUnit(unit);

  /// Creates a new ScaleControl from a [jsObject].
  ScaleControl.fromJsObject(super.jsObject) : super.fromJsObject();
}
