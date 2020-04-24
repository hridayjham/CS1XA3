# CS 1XA3 Project03 - <MyMacId>
## Usage
Install conda enivornment with conda activate djangoenv

Run locally with
python manage.py runserver localhost:8000
Run on mac1xa3.ca with
python manage.py runserver localhost:10048
...
Log in with TestUser, password SomePassword
...
## Objective 01
Description: Complete Login and SignUp Pages (5 points)
- this feature is displayed in signup.djhtml which is rendered by
signnup_view
- it makes a POST Request to from something.js to /e/jhamh/signup
which is handled bysignup_view
Exceptions:
- If the /e/jhamh/something_post is called without arguments it redirects
to login.djhtml
...
## Objective 02
Description: Adding User Profile and Interests (5 points)
- The template social_base.djhtml renders the left_column used by messages.djhtml, people.djhtml and account.djhtml
- When each of the above templates are rendered in Project03/social/views.py (see messages_view,
people_view and account_view respectively), they are given the currently logged in UserInfo object
via a variable (and hence social_base.djhtml has access to it as well)
...
## Objective 03
Description:  Account Settings Page (10 points )
- Clicking the top right icon on the Navbar brings you to the Account Settings Page, rendered by
– the function def account_view in Project03/social/views.py

   – the template Project03/social/templates/account.djhtml

Exceptions:
- If the user does not enter new password, takes it back to the home page.
