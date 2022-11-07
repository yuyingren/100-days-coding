
# Function checks the nth fibnacci number

def fib(n):
   
    if n == 0:
        return 0
    elif n == 1 or n == 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)

def run_game(n):

    print(fib(n))
    continue_check = input("Do you wanna check another fibnacci number? Y/N: ")
    while continue_check.upper() == "Y":
        n = int(input("Please enter another nth order: "))
        print(fib(n))
        continue_check = input("Do you wanna check another fibnacci number? Y/N: ")
    
    print("Thank you!")


def main():
    user_input = int(input("Enter the nth order fibnacci number you wanna check: "))
    if user_input < 0:
        user_input = int(input("THe input is incorrect, please enter a number >= 0: "))
        run_game(user_input)
    else:
        run_game(user_input)

main()
