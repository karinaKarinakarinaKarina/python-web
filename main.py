print("Enter the coefficients")
a = float(input())
b = float(input())
c = float(input())
discriminant= b*b-4*a*c
if discriminant <0:
    print("no x")
elif discriminant == 0 :
    x = (-b + (discriminant**0.5))/(2*a)
    print("The x is " + str(x))
else:
    x1 = (-b + (discriminant**0.5))/(2*a)
    x2 = (-b-(discriminant**0.5))/(2*a)
    print("x1 is " + str(x1) + " x2 is " + str(x2))