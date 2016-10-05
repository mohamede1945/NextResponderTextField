#
# Be sure to run `pod lib lint NextResponderTextField.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "NextResponderTextField"
  s.version          = "1.2.0"
  s.summary          = "Automatically moves to the next UITextField when tapping the keyboard action button"
  s.description      = <<-DESC

Swift 2.3 version!

Represents a next responder UITextField.
When the instance becomes first responder, and then the user taps the action button (e.g. return keyboard key)
then one of the following happens:
1. If no nextResponderField set, keyboard dismissed.
2. If nextResponderField is a UIButton and disabled, then keyboard dismissed.
3. If nextResponderField is a UIButton and enabled, then the UIButton fires touch up inside event (simulating a tap).

You can set nextResponderField to any UIResponder subclass, and it will become first responder when tapped.
But having multiple NextResponderTextField pointing to each other, then you can go to next field.

The typical usage will be list of NextResponderTextField and the last one point to a UIButton.

For example a login screen:
Username -> NextResponderTextField
Password -> NextResponderTextField
Sign In -> UIButton

Username.nextResponderField -> Password
Password.nextResponderField -> Sign In

                       DESC
  s.homepage         = "https://github.com/mohamede1945/NextResponderTextField"
  s.screenshots     = "https://raw.githubusercontent.com/mohamede1945/NextResponderTextField/master/screenshots/demo.gif"
  s.license          = 'MIT'
  s.author           = { "Mohamed Afifi" => "" }
  s.source           = { :git => "https://github.com/mohamede1945/NextResponderTextField.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/mohamede1945'

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'NextResponderTextField' => ['Pod/Assets/*.png']
  }
end
