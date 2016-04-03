class UserMailer < ApplicationMailer
  default from: '<notifications@example.com>'
          # 'Content-Transfer-Encoding' => '8bit'
          # content_transfer_encoding: '8bit'
          # charset: 'Shift_JIS'


  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'
    delivery_options = {}
    # delivery_options = { 'Content-Transfer-Encoding': '8bit' }
    # headers['charset'] = 'UTF-8'
    # headers[:content_transfer_encoding] = '8bit'
    # m = mail(to: @user.email, subject: 'Welcome to My Awesome Site', delivery_method_options: delivery_options) do |format|
      m = mail(to: @user.email, subject: 'Welcome to My Awesome Site') do |format|
      # format.text 'Content-Transfer-Encoding' => '8bit', charset: 'Shift-JIS', content_transfer_encoding: '8bit'
      # format.text
      # format.html charset: 'Shift-JIS'
      #   format.add_content_transfer_encoding.text
      # format.add_content_transfer_encoding.text content_type: 'text/plain; charset=Shift-JIS', charset: 'Shift-JIS', 'Content-Transfer-Encoding' => '8bit', content_transfer_encoding: '8bit',  transport_encoding: '8bit'
      # format.text(content_transfer_encoding: "base64")
      # format.text content_type: 'text/plain; charset=Shift_JIS', charset: 'Shift_JIS', 'Content-Transfer-Encoding' => '8bit', content_transfer_encoding: '8bit',  transport_encoding: '8bit'
      format.text charset: 'Shift_JIS'
      # format.text
      format.html
      # format.text
    end
    # m.content_transfer_encoding = '8bit'
    # m.transport_encoding = '8bit'
    #  m.text_part.content_transfer_encoding = '8bit'
    # p m.text_part.body
    m.text_part.body = m.text_part.body.raw_source.encode!('Shift_JIS')
    # raise()
    # m.text_part.transport_encoding = '8bit'
    m
  end
end
