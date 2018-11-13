# README
* Ruby version 2.5.3
* Rails version 5.2.1
* Bootstrap version 4.1.3

Billing system:
- includes 2 roles - the payer and the administrator, the payer can view the contents of the account and add payments, the administrator can delete registered users.
- authorization system - unregistered users can only see the main page without details.
- base user model - with the relationship "has_many" of payments
- in the database (seed) next users:
    email1@email.com, pass '1', role - 'payer'
    email3@email.com, pass '3', role - 'admin'

04-11-2018
- updates roles - admin and user, admin can delete users and pays, remove "payer" role, in DB field - "is_admin"
- add summ amount on user page
- add button "delete pay" on pay page for admin

07-11-2018
- add logic for view payments by period
- add datepicker
- updated styles
- add bootstrap
test users: Snow@email.com, pass "1";  Drogo@email.com, pass "3" - admin

08-11-2018
-add "contacts" and "about us" pages
-add site menu
- fixed issue with users Delete

12-11-2018
-add bootstrap row and col formating for each pages
-update form styles

13-11-2018
Added responsive design
