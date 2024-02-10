import random
from faker import Faker
import datetime
# INSERT INTO `transactions`(`CustomerID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES (`{CustomerID}`, `{payment_method_ID}`, `{Amount}`, `{TransactionDate}`)

fake = Faker()

def generate_transcation_date():
    start_date = datetime.date(2023, 1, 1)
    end_date = datetime.date(2023, 12, 31)
    days_between = (end_date - start_date).days
    random_days = random.randint(0, days_between)
    return start_date + datetime.timedelta(days=random_days)


for _ in range(15):
    CustomerID = random.randint(1,20)
    Payment_methodID = random.randint(1,3)
    TransactionDate = generate_transcation_date()
    Amount = round(random.uniform(100.00,5000.00),2)
    print(f"INSERT INTO `transactions`(`customersID`, `payment_method_ID`, `Amount`, `TransactionDate`) VALUES ('{CustomerID}', '{Payment_methodID}', '{Amount}', '{TransactionDate}');")