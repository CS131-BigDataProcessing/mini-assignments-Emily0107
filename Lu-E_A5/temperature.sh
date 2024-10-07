temp=$1
if [ $temp -lt 85 ]
then
        if [ $temp -lt 67 ]
        then
                if [ $temp -lt 55 ]
                then
                        echo "freezing"
                else
                        echo "cold"
                fi
        else
                echo "nice!"
        fi
else
        echo "hot"
fi
