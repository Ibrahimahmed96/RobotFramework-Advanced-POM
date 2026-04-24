import random
import string

def generate_random_user_data():
    first_name = ''.join(random.choices(string.ascii_letters, k=6))
    last_name = ''.join(random.choices(string.ascii_letters, k=8))
    zip_code = ''.join(random.choices(string.digits, k=5))
    return first_name, last_name, zip_code
