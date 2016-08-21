Feature:
  As a user, I want to sign up for a new account
Scenario:
  Given I am on the sign up page 
  When I fill in "user_email" with "asdfas@exmaple.com" and "user_password" with "11111111" and "user_password_confirmation" with "11111111" and click "Sign up"
  Then I should see "successfully"
  

  
