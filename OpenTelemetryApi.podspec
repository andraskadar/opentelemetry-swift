#
# Be sure to run `pod lib lint OpenTelemetry-Swift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'OpenTelemetryApi'
  s.version          = '0.1.0'
  s.summary          = 'A swift OpenTelemetry client.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This package includes several libraries. The OpenTelemetryApi library includes protocols and no-op implementations that comprise the OpenTelemetry API following the specification. The OpenTelemetrySdk library is the reference implementation of the API.

Libraries that produce telemetry data should only depend on OpenTelemetryApi, and defer the choice of the SDK to the application developer. Applications may depend on OpenTelemetrySdk or another package that implements the API.
                       DESC

  s.homepage         = 'https://github.com/open-telemetry/OpenTelemetry-Swift'
  s.license          = { :type => 'APACHE', :file => 'LICENSE' }
  s.authors          = { 'Open Telemetry' => 'info@opentelemetry.io' }
  s.source           = { :git => 'https://github.com/Andras Kadar/OpenTelemetry-Swift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'

  s.source_files = ["Sources/OpenTelemetryApi/**/*.swift"]
end
