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

  def sign_in_page
    new_user_session_path
  end

  def sign_in(user)
    fill_in :user_email, with: user.email
    fill_in :user_password, with: user.password

    click_button 'Sign in'
  end

  def guest_has_an_account
    @guest = guest  
    User.new(:email => @guest.email, :password => @guest.password, :password_confirmation => @guest.password).save! 
  end

  def successful_sign_in_message
    'Signed in'
  end

  def invalid_sign_in_message
    'Invalid email or password'
  end

  def sign_out_message
    'Signed out'
  end
 
end

World AuthenticationSupport
