import getpass

def no_arg_message():
    message = f'''
    █▄░█ █▀█   ▄▀█ █▀█ █▀▀ █░█ █▀▄▀█ █▀▀ █▄░█ ▀█▀ █▀   █▀█ █▀█ █▀█ █░█ █ █▀▄ █▀▀ █▀▄
    █░▀█ █▄█   █▀█ █▀▄ █▄█ █▄█ █░▀░█ ██▄ █░▀█ ░█░ ▄█   █▀▀ █▀▄ █▄█ ▀▄▀ █ █▄▀ ██▄ █▄▀

    Hello {getpass.getuser()},
    Please neter atleast one argument. The correct syntax to use the tool is:
    securepasswordchecker <passwd1> <passwd2> <passwd3> <passwd4> and so on....

    Example:
    securepasswordchecker this_is_my_password@123

    You can use as many passwords you want to check separated by a white-space.
    Thanks 😊
    '''

    print(message)

def help_message():
    message = f'''
    
    ░██████╗███████╗░█████╗░██╗░░░██╗██████╗░███████╗  ██████╗░░█████╗░░██████╗░██████╗░██╗░░░░░░░██╗░█████╗░██████╗░██████╗░  ░█████╗░██╗░░██╗███████╗░█████╗░██╗░░██╗███████╗██████╗░
    ██╔════╝██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔════╝  ██╔══██╗██╔══██╗██╔════╝██╔════╝░██║░░██╗░░██║██╔══██╗██╔══██╗██╔══██╗  ██╔══██╗██║░░██║██╔════╝██╔══██╗██║░██╔╝██╔════╝██╔══██╗
    ╚█████╗░█████╗░░██║░░╚═╝██║░░░██║██████╔╝█████╗░░  ██████╔╝███████║╚█████╗░╚█████╗░░╚██╗████╗██╔╝██║░░██║██████╔╝██║░░██║  ██║░░╚═╝███████║█████╗░░██║░░╚═╝█████═╝░█████╗░░██████╔╝
    ░╚═══██╗██╔══╝░░██║░░██╗██║░░░██║██╔══██╗██╔══╝░░  ██╔═══╝░██╔══██║░╚═══██╗░╚═══██╗░░████╔═████║░██║░░██║██╔══██╗██║░░██║  ██║░░██╗██╔══██║██╔══╝░░██║░░██╗██╔═██╗░██╔══╝░░██╔══██╗
    ██████╔╝███████╗╚█████╔╝╚██████╔╝██║░░██║███████╗  ██║░░░░░██║░░██║██████╔╝██████╔╝░░╚██╔╝░╚██╔╝░╚█████╔╝██║░░██║██████╔╝  ╚█████╔╝██║░░██║███████╗╚█████╔╝██║░╚██╗███████╗██║░░██║
    ╚═════╝░╚══════╝░╚════╝░░╚═════╝░╚═╝░░╚═╝╚══════╝  ╚═╝░░░░░╚═╝░░╚═╝╚═════╝░╚═════╝░░░░╚═╝░░░╚═╝░░░╚════╝░╚═╝░░╚═╝╚═════╝░  ░╚════╝░╚═╝░░╚═╝╚══════╝░╚════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝

    Hello {getpass.getuser()},
    So glad to see that you've made a conscious decision to take a step for securing your password.
    Luckily there's nothing much to learn for using this tool. You just need one command to be able to use it.

    Follow the syntax below and you'll be sorted 🤗

    Syntax:
    securepasswordchecker <passwd1> <passwd2> <passwd3> <passwd4> and so on....

    Example:
    1. securepasswordchecker this_is_my_password@123
    2. securepasswordchecker iamthequeen@123 kings_password_here1 my_Secure_password@lol

    You can use this tool either to check just one password or even as many passwords you want to check. Just make sure you put them in a space separated fashion.

    I hope this tool serves exactly what you needed.

    -----------------------------------------------------

    Read the Complete Document on: https://github.com/ajayagrawalgit/Secure-Password-Checker
    Support Me On: https://www.buymeacoffee.com/ajayagrawal

    Cheers 🥂
    '''
    print(message)