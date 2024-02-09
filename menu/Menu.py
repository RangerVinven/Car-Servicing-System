from Customers_Menu import getCustomerOption

def getUserOption():
    print('''
Please select the number for your option:
    [1]. Customer options
          ''')
    
    userOption = int(input())
    
    if(userOption == 1):
        getCustomerOption()