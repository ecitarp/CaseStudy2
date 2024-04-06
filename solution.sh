read -p "Please enter 6 numbers separated by space:" InputNumber1 InputNumber2 InputNumber3 InputNumber4 InputNumber5 InputNumber6
echo -e "Menu List:\na.Perform Subtraction\nb.Perform Multiplication and store result in json\nc.Show random number on screen\nd.Print sorted numbers in highest to lowest order\ne.Print sorted numbers in lowest to highest order"; read -p "Please enter the option for the action you wish to perform: " choice
echo " "
echo " "
case $choice in
  a)
   sub=$(($InputNumber1 - $InputNumber2 - $InputNumber3 - $InputNumber4 - $InputNumber5 - $InputNumber6))
   echo "Subtraction result is $sub"
   ;;
  b)
   multpcn=$(($InputNumber1 * $InputNumber2 * $InputNumber3 * $InputNumber4 * $InputNumber5 * $InputNumber6))
   echo "{\"InputNumber1\": $InputNumber1 ,\"InputNumber2\": $InputNumber2, \"InputNumber3\": $InputNumber3, \"InputNumber4\": $InputNumber4, \"InputNumber5\": $InputNumber5, \"InputNumber6\": $InputNumber6, Multiplication: $multpcn }" > Multiply.json
    ;;
  c)
   list=($InputNumber1 $InputNumber2 $InputNumber3 $InputNumber4 $InputNumber5 $InputNumber6)
   random_number=`echo ${list[$RANDOM % ${#list[@]} ]}`
   echo "The random number is $random_number"
   ;;
  d)
   echo "Sorted numbers in highest to lowest order:"    
   echo $InputNumber1 $InputNumber2 $InputNumber3 $InputNumber4 $InputNumber5 $InputNumber6  | tr ' ' '\n' | sort -nr
   ;;
  e)
   echo "Sorted numbers in lowest to highest order:"    
   echo $InputNumber1 $InputNumber2 $InputNumber3 $InputNumber4 $InputNumber5 $InputNumber6  | tr ' ' '\n' | sort -n
   ;;
  *)
  echo "Invalid choice.Please enter valid choice from a-e"
   ;;
  esac
