# Gets the customer's option
def getCustomerOption():
    userOption = 0

    while userOption != 99:
        print('''
    Please select the number for your option:
        [1]. Create a customer
        [2]. Search for a customer
        [3]. Edit a customer
        [4]. Delete a customer
        [99]. Back
            ''')
        
        userOption = int(input())

        # If user wants to create a customer
        if userOption == 1:
            forname = input("What's the customer's firstname: ")
            surname = input("What's the customer's surname: ")
            address = input("What's the customer's address: ")
            postcode = input("What's the customer's postcode: ")
            phoneNo = input("What's the customer's phone number: ")

            customer = Customer(forname, surname, address, postcode, phoneNo)
            Customer.addCustomer(customer)

        # If the user wants to search for a customer
        elif userOption == 2:
            Customer.searchCustomer()
        
        # If a customer wants to edit a customer
        elif userOption == 3:
            forname = input("What's the customer's firstname: ")
            surname = input("What's the customer's surname: ")
            address = input("What's the customer's address: ")
            postcode = input("What's the customer's postcode: ")
            phoneNo = input("What's the customer's phone number: ")

            customer = Customer(forname, surname, address, postcode, phoneNo)
            Customer.editCustomer(customer)

        # If the user wants to delete a customer
        elif userOption == 4:
            customer = Customer.searchCustomer()
            if customer == None:
                return
            
            else:
                Customer.deleteCustomer(customer)

        else:
            print("Invalid option")
            continue