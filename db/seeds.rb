u1 = User.create(first_name: "Jon", last_name: "Snow",email: "Snow@email.com", password: "1", password_confirmation: "1", is_admin: '0')
Payment.create(amount: "10.01", amount_date: "01.01.2000", description: "1 pay", pay_type: "payment", pay_category: "home", user_id: u1.id )
Payment.create(amount: "20.02", amount_date: "02.02.2000", description: "2 pay", pay_type: "payment", pay_category: "auto", user_id: u1.id )
Payment.create(amount: "30.03", amount_date: "04.03.2000", description: "3 pay", pay_type: "payment", pay_category: "travel", user_id: u1.id )
Payment.create(amount: "40.01", amount_date: "07.01.2000", description: "4 pay", pay_type: "payment", pay_category: "food", user_id: u1.id )
Payment.create(amount: "50.02", amount_date: "08.02.2000", description: "5 pay", pay_type: "contribution", pay_category: "regular", user_id: u1.id )
Payment.create(amount: "60.03", amount_date: "09.03.2000", description: "6 pay", pay_type: "contribution", pay_category: "not_regular", user_id: u1.id )
u2 = User.create(first_name: "Robert", last_name: "Barateon",email: "Barateon@email.com", password: "2", password_confirmation: "2", is_admin: '0')
Payment.create(amount: "10.01", amount_date: "01.01.2018", description: "1 pay", user_id: u2.id )
u3 = User.create(first_name: "Khal", last_name: "Drogo",email: "Drogo@email.com", password: "3", password_confirmation: "3", is_admin: '1')
Payment.create(amount: "10.01", amount_date: "01.01.2000", description: "1 pay", pay_type: "payment", pay_category: "home", user_id: u3.id )
Payment.create(amount: "20.02", amount_date: "02.02.2000", description: "2 pay", pay_type: "payment", pay_category: "auto", user_id: u3.id )
Payment.create(amount: "30.03", amount_date: "04.03.2001", description: "3 pay", pay_type: "payment", pay_category: "travel", user_id: u3.id )
Payment.create(amount: "40.01", amount_date: "01.01.2002", description: "4 pay", pay_type: "payment", pay_category: "food", user_id: u3.id )
Payment.create(amount: "50.02", amount_date: "02.02.2003", description: "5 pay", pay_type: "payment", pay_category: "kredit", user_id: u3.id )
Payment.create(amount: "60.03", amount_date: "04.03.2004", description: "6 pay", pay_type: "contribution", pay_category: "regular", user_id: u3.id )
tt1 = TransferType.create(pay_type: "payment", lookup_code: "payment")
tt2 = TransferType.create(pay_type: "contribution", lookup_code: "contribution")
tc1 = TransferCategory.create(type_lookup_code: "payment", category_name: "home")
tc2 = TransferCategory.create(type_lookup_code: "payment", category_name: "fun")
tc3 = TransferCategory.create(type_lookup_code: "payment", category_name: "auto")
tc4 = TransferCategory.create(type_lookup_code: "payment", category_name: "travel")
tc5 = TransferCategory.create(type_lookup_code: "contribution", category_name: "regular")
tc6 = TransferCategory.create(type_lookup_code: "contribution", category_name: "not_regular")
