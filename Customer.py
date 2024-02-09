from Database import cursor, db

class Customer:
    def __init__(self,customerID,forname,surname,address,postcode,phoneNo):
        self.customerID = customerID
        self.forname = forname
        self.surname = surname
        self.address = address
        self.postcode = postcode
        self.phoneNo = phoneNo

    @staticmethod
    def addCustomer(customer):
        # Ensures there's not a customer with the same phone number
        cursor.execute("SELECT customerID FROM customer WHERE phoneNo=%s", (customer.phoneNo.replace(" ", ""),))
        if len(cursor.fetchall()) != 0:
            print("A customer with that phone number already exists")
            return

        cursor.execute("INSERT INTO customer(forname, surname, address, postcode, phoneNo) VALUES (%s,%s,%s,%s,%s);", (customer.forname, customer.surname, customer.address, customer.postcode, customer.phoneNo.replace(" ", "")))
        db.commit()

    @staticmethod
    def deleteCustomer(customerID):
        cursor.execute("DELETE FROM customer WHERE customerID=%s", (customerID,))
        db.commit()

    # Finds the customer's information based off their forename
    # If there's multiple customers with that forename, then it asks for the surname,
    # If there's still multiple customers, then it asks for the phone number
    @staticmethod
    def searchCustomer():
        #  forname > Surname > Phone number
        forname = input("Please enter your forname: ").lower()
        cursor.execute("SELECT * FROM customer WHERE forname=%s;", (forname,))
        
        customers = cursor.fetchall()

        # If multiple customers exist with that firstnames
        if len(customers) > 1:
            surname = input("Please enter your surname: ").lower()
            cursor.execute("SELECT * FROM customer WHERE forname=%s AND surname=%s;", (forname,surname))

            # If multiple customers exist with the firstname and surname
            customers = cursor.fetchall()
            if len(customers) > 1:
                phoneNo = input("Please enter your phone number: ").lower().replace("\r", "")
                cursor.execute("SELECT * FROM customer WHERE forname=%s AND surname=%s AND phoneNo=%s;", (forname,surname, phoneNo))

                # There's aren't customers matching that firstname, surname and phone number
                customers = cursor.fetchall()
                if len(customers) == 0:
                    print("No customers with those details")
                
                else:
                    print(customers)

            elif len(customers) == 0:
                print("No customers with that firstname and surname exists")
            
            else:
                print(customers)

        elif len(customers) == 0:
            print("No customers with that firstname exists")
        
        else:
            print(customers)

