from checker_functions import *
from messages import *
import sys

def main():
    all_the_passwords = sys.argv[1:]
    for passwds in all_the_passwords:
        first_5_chars, rest_all_chars = hash_the_password(passwds)
        pwned_api_response = pwned_api_data(first_5_chars)
        leak_check = get_password_leaks_count(pwned_api_response, rest_all_chars)
        if leak_check !=0:
            print(f"Oops! {passwds} has been found {leak_check} times being used in data breaches ! You should probably consider changing it.")
        else:
            print(f"{passwds} seems OK to be used. Carry On !")


####################################################################################################
####################################################################################################

if __name__ == "__main__":
        
    if len(sys.argv) == 1:
        no_arg_message();
        sys.exit(0)
    elif sys.argv[1] == "-h" or sys.argv[1] == "--help":
        help_message()
        sys.exit(0)
    
    main()
