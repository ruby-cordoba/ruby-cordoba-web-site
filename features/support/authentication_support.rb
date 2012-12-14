module AuthenticationSupport
  def sign_up_page
    new_user_registration_path
  end

  def guest
    build(:guest)
  end

  def invalid_guest
    build(:guest, email: 'foo.bar')
  end

  def sign_up(user)
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password
    fill_in :user_password_confirmation, with: user.password_confirmation

    click_button 'Sign up'
  end

  def find_user(user)
    User.where(email: user.email).first
  end

  def welcome_message
    'Welcome!'
  end

  def authentication_error_message
    'is invalid'
  end
end

World AuthenticationSupport
