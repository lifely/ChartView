import SwiftUI

/// Descripton of colors/styles for any kind of chart
public class ChartStyle: ObservableObject {

  // MARK: - Properties

  /// colors for background are of chart
  public let backgroundColor: ColorGradient

  /// colors for foreground fill of chart
  public let foregroundColor: [ColorGradient]

  public var stepOverride: CGPoint? = nil

  public var strokeStyle: StrokeStyle = StrokeStyle(lineWidth: 3, lineJoin: .round)

  // MARK: - Computed Properties -

  /// color for foreground fill of chart
  public var firstForegroundColor: ColorGradient? { return foregroundColor.first }

  public var foregroundGradient: Gradient? { return firstForegroundColor?.gradient }

  public var backgroundGradient: Gradient { return backgroundColor.gradient }

  // MARK: - Initializers -

  /// Initialize with a single background color and a single `ColorGradient` for the foreground
  /// - Parameters:
  ///   - backgroundColor: a `Color`
  ///   - foregroundColor: a `ColorGradient`
  public init(backgroundColor: Color, foregroundColor: Color, stroke: StrokeStyle? = nil, step: CGPoint? = nil) {
    self.backgroundColor = ColorGradient.init(backgroundColor)
    self.foregroundColor = [ColorGradient(foregroundColor)]

    if let stroke = stroke { self.strokeStyle = stroke }
    if let step = step { self.stepOverride = step }
  }

  /// Initialize with a single background color and an array of `ColorGradient` for the foreground
  /// - Parameters:
  ///   - backgroundColor: a `Color`
  ///   - foregroundColor: array of `ColorGradient`
  public init(backgroundColor: Color, foregroundColor: [ColorGradient], stroke: StrokeStyle? = nil) {
    self.backgroundColor = ColorGradient.init(backgroundColor)
    self.foregroundColor = foregroundColor

    if let stroke = stroke { self.strokeStyle = stroke }
  }

  /// Initialize with a single background color and a single `ColorGradient` for the foreground
  /// - Parameters:
  ///   - backgroundColor: a `Color`
  ///   - foregroundColor: a `ColorGradient`
  public init(backgroundColor: Color, foregroundColor: ColorGradient, stroke: StrokeStyle? = nil) {
    self.backgroundColor = ColorGradient.init(backgroundColor)
    self.foregroundColor = [foregroundColor]

    if let stroke = stroke { self.strokeStyle = stroke }
  }

  /// Initialize with a single background `ColorGradient` and a single `ColorGradient` for the foreground
  /// - Parameters:
  ///   - backgroundColor: a `ColorGradient`
  ///   - foregroundColor: a `ColorGradient`
  public init(backgroundColor: ColorGradient, foregroundColor: ColorGradient, stroke: StrokeStyle? = nil) {
    self.backgroundColor = backgroundColor
    self.foregroundColor = [foregroundColor]

    if let stroke = stroke { self.strokeStyle = stroke }
  }

  /// Initialize with a  single background `ColorGradient` and an array of `ColorGradient` for the foreground
  /// - Parameters:
  ///   - backgroundColor: a `ColorGradient`
  ///   - foregroundColor: array of `ColorGradient`
  public init(backgroundColor: ColorGradient, foregroundColor: [ColorGradient], stroke: StrokeStyle? = nil) {
    self.backgroundColor = backgroundColor
    self.foregroundColor = foregroundColor

    if let stroke = stroke { self.strokeStyle = stroke }
  }

}
