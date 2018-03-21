class LoginPage
  include PageObject

#进入登录页面

  page_url "http://192.168.13.54:8088"   #required for visit_page

  text_field(:login_username, id: "login_username")
  text_field(:login_password, id: "login_password")
  link(:login_button, id: "login")

#输入登录信息

  def login_with(username, password)

    self.login_username = username
    self.login_password = password
    self.login_button

  end

#增加一个admin用户

#   def add_button
#
#     div(id: "node_menu_user").wait_until_present.click
#     iframe(index: 1).table(class: "w2ui-button", index: 3).click
#
#   end
#
#   def add_administrator
#
#     iframe(index: 1).text_field(id: "username").wait_until_present.set("tang")
#     iframe(index: 1).text_field(id: "password").wait_until_present.set("123456")
#     iframe(index: 1).text_field(id: "__retype__password").wait_until_present.set("123456")
#     iframe(index: 1).text_field(id: "email").wait_until_present.set("123456@email.com")
#     iframe(index: 1).checkbox(id: "administrator").click
#     iframe(index: 1).button(class: "w2ui-btn w2ui-btn-blue").click
#
#   end
#
# #退出当前用户
#
#   def login_out
#     span(id: "logout_img")
#     button(id: "Yes")
#   end

  # def text_contains(text)
  #   fail unless @browser.text.include? text
  # end

end
