echo "$HOME"

value=`cat $HOME/.ipfs/subscription.key`
length=`cat $HOME/.ipfs/subscription.key|wc -c`
if [ $length = 0 ]; then
solaripfs shutdown
exit 1
fi
echo "$value"
echo "$length"
  URL="https://solarbankersico.com/SolarNode_Service.svc/JSON/CheckSubscriptionValid/"$value;
    echo "$URL";
      # store the whole response with the status at the and
        HTTP_RESPONSE=$(curl --silent --write-out "HTTPSTATUS:%{http_code}" -X GET $URL)

	  # extract the body
	    HTTP_BODY=$(echo $HTTP_RESPONSE | sed -e 's/HTTPSTATUS\:.*//g')

	      # extract the status
	        HTTP_STATUS=$(echo $HTTP_RESPONSE | tr -d '\n' | sed -e 's/.*HTTPSTATUS://')

		  # print the body
		    echo "$HTTP_BODY"

		      # example using the status
		        if [  $HTTP_BODY = "false"  ]; then
				            echo "Error [HTTP status: $HTTP_STATUS]"
					                echo "some file content" > output.txt
							            solaripfs shutdown
								                  exit 1
										        fi

