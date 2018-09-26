# require_relative "test_helper"

# class MailerTest < Minitest::Test
#   def test_basic
#     assert_message :welcome
#   end

#   def test_prevent_delivery
#     assert_message :welcome2
#     assert_nil Ahoy::Message.first.sent_at
#   end

#   def test_no_message
#     UserMailer.welcome3.to
#     assert_equal 0, Ahoy::Message.count
#   end

#   def test_utm_params
#     message = UserMailer.welcome4
#     body = message.body.to_s
#     assert_match "utm_campaign=welcome4", body
#     assert_match "utm_medium=email", body
#     assert_match "utm_source=user_mailer", body
#   end

#   def test_array_params
#     message = UserMailer.welcome5
#     body = message.body.to_s
#     assert_match "baz%5B%5D=1&amp;baz%5B%5D=2", body
#   end

#   def test_heuristic_parse
#     # Should convert the URI fragment into a URI
#     message = UserMailer.heuristic_parse
#     body = message.body.to_s
#     assert_match "http://example.org", body
#   end

#   def test_mailto
#     # heuristic parse should ignore the mailto link
#     message = UserMailer.mailto
#     body = message.body.to_s
#     assert_match "<a href=\"mailto:someone@yoursite.com\">", body
#   end

#   def test_app_link
#     # heuristic parse should ignore the app link
#     message = UserMailer.app_link
#     body = message.body.to_s
#     assert_match "<a href=\"fb://profile/33138223345\">", body
#   end

#   def test_utm_params_heuristic_parse
#     # heuristic parse should not have unexpected side effects
#     message = UserMailer.welcome4_heuristic
#     body = message.body.to_s
#     assert_match "utm_campaign=welcome4", body
#     assert_match "utm_medium=email", body
#     assert_match "utm_source=user_mailer", body
#   end

#   def test_array_params_heuristic_parse
#     # heuristic parse should not have unexpected side effects
#     message = UserMailer.welcome5_heuristic
#     body = message.body.to_s
#     assert_match "baz%5B%5D=1&amp;baz%5B%5D=2", body
#   end

#   private

#   def assert_message(method)
#     UserMailer.send(method).deliver_now
#     ahoy_message = Ahoy::Message.first
#     assert_equal 1, Ahoy::Message.count
#     assert_equal "test@example.org", ahoy_message.to
#     assert_equal "UserMailer##{method}", ahoy_message.mailer
#     assert_equal "Hello", ahoy_message.subject
#     assert_equal "user_mailer", ahoy_message.utm_source
#     assert_equal "email", ahoy_message.utm_medium
#     assert_equal method.to_s, ahoy_message.utm_campaign
#   end
# end
