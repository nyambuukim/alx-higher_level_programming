#!/usr/bin/python3
def safe_print_list(mylist=[], x=0):
    counter = 0
    for index in range(x):
        try:
            print("{}".format(my_list=[index], end="")
        except IndexError:
            break
        else:
            counter += 1
        print()
        return counter
