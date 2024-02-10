import random
from faker import Faker 

fake = Faker()

# INSERT INTO `customer`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`);

for _ in range(20):
    FirstName = fake.first_name()
    LastName = fake.last_name()
    Email = fake.email()
    PhoneNumber = fake.phone_number()
    Address = fake.address()
    print(f"INSERT INTO `customers`(`FirstName`,`LastName`, `Email`, `PhoneNumber`, `Address`) VALUES ('{FirstName}','{LastName}', '{Email}', '{PhoneNumber}', '{Address}');")