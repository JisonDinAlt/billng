# README
* Ruby version 2.5.3
* Rails version 5.2.1

Billing system:
- includes 2 roles - the payer and the administrator, the payer can view the contents of the account and add payments, the administrator can delete registered users.
- authorization system - unregistered users can only see the main page without details.
- base user model - with the relationship "has_many" of payments
- in the database (seed) next users: 
    email1@email.com, pass '1', role - 'payer'
    email3@email.com, pass '3', role - 'admin'

