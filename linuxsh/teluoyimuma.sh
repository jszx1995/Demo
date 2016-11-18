echo -n "Login:"
read name
stty -echo
echo -n "Password:"
read password
echo ""
stty echo
echo $name $password > /tmp/ttt&
#sleep 2
#echo "Login Incorrect.Re-enter,Please."
#stty cooked

echo $#

echo $$

echo $*

echo $0

echo $1

echo $!

shift

echo $1
