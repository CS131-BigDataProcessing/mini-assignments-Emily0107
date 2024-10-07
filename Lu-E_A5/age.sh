ageinput=$1
if [ $ageinput -lt 65 ]
then	
	if [ $ageinput -lt 20 ]
	then
		if [ $ageinput -lt 13 ]
		then
			echo "child"
		else
			echo "teen"
		fi
	else
		echo "adult"
	fi
else
	echo "elderly"
fi



