if [[ -z ${1} ]]; then
    echo "i need 1 pos param"
    exit
fi

var1=file1.txt
var2=${1}


echo "welcome $(whoami)" > ${var1}


echo ${var1}
cat ${var1}
echo ${var2} "is in position 1"
echo ${var2} "is in position 1"

echo "what is your name"
read username
echo "what is your password"
read password


echo "hello ${username}, if that's really you."

if [[ ${username} == "Zealan Tanner" ]] && [[ ${password} == "1234" ]]; then
    echo "oh it is yo"
else
    echo "nope not yo"
    exit
fi


echo "message to send:"
read messageToSend
echo "reciever of message:"
read reciever

osascript -e "tell application 'Messages' to send ${messageToSend} to buddy ${reciever}"

echo "sent"