import requests
import hashlib



def pwned_api_data(first_5_hashed_chars):
    url = "https://api.pwnedpasswords.com/range/" + first_5_hashed_chars
    # This API returns all the hashed password's [5:] chars and their count of leaks
    response = requests.get(url)
    if response.status_code != 200:
        raise RuntimeError(f"Error Fetching the data ! {response.status_code}. Kindly Check the API and try again !")
    else:
        return response

def hash_the_password(password_plain_text):
    sha1_encoded_hex = hashlib.sha1(password_plain_text.encode("utf-8")).hexdigest().upper()
    first_5_chars_hash, next_all_chars = sha1_encoded_hex[:5], sha1_encoded_hex[5:]
    return first_5_chars_hash, next_all_chars


def get_password_leaks_count(hashlist_from_api, next_all_chars):
    hash_tuple = (line.split(":") for line in hashlist_from_api.text.splitlines())
    for h, count in hash_tuple:
        if h==next_all_chars:
            return count
    return 0