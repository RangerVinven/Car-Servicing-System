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
        cursor.execute("INSERT INTO customer(forname, surname, address, postcode, phoneNo) VALUES (%s,%s,%s,%s,%s);", (customer.forname, customer.surname, customer.address, customer.postcode, customer.phoneNo.replace(" ", "")))
        db.commit()

    @staticmethod
    def deleteCustomer(customerID):
        cursor.execute("DELETE FROM customer WHERE customerID=%s", (customerID,))
        db.commit()

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


            customers = cursor.fetchall()
            if len(customers) > 1:
                phoneNo = input("Please enter your phone number: ").lower().replace("\r", "")
                cursor.execute("SELECT * FROM customer WHERE forname=%s AND surname=%s AND phoneNo=%s;", (forname,surname, phoneNo))

                customers = cursor.fetchall()
                if len(customers) == 0:
                    print("No customers with that firstname and surname exists")
                
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

