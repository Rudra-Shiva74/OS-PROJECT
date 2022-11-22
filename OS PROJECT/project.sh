win=0
while [ $win != "true" ]
do
	echo " "
	echo "[1] Mathmatical Oparation on Any two number"
	echo "[2] Find The Value Of Any Expression"
	echo "[3] Matrix Oparations"
	echo "[0] Exit The Program"
	echo " "
	read -p "Enter your choice --> " choice
	case $choice in
		2)
			echo " "
			read -p "Enter your Expression --> " Exp
			res=`expr $(($Exp))`
			echo "Value = $res"
			;;
		1)
			echo " "
			echo "[1] For Adiition"
			echo "[2] For Substraction"
			echo "[3] For Multiplication"
			echo "[4] For Division"
			echo " "
			read -p "Enter Your First Number : " num1
			read -p "Enter Your Second Number : " num2
			read -p "Enter Your Operation : " ch
			case $ch in
				1)
					echo "Addition is : `expr $(($num1+$num2))`"
					;;
				2)
					echo "Substraction is : `expr $(($num1-$num2))`"
					;;
				3)
					echo "Multiplication is : `expr $(($num1*$num2))`"
					;;
				4)
					echo "Division is : `expr $(($num1/$num2))`"
					;;
			esac
			;;
		3)
			echo " "
			echo "[1] For Additon Two Matrix"
			echo "[2] For Substraction Two Matrix"
			echo "[3] For Multiplication Two matrix"
			echo "[4] Transpose of a matrix"
			echo " "
			read -p "Enter your operation : " ch
			case $ch in
				1)
					echo " "
					read -p "Enter the size of matrix: " n
					c=`expr $n - 1`
					declare -A arr
					declare -A Abhi
					echo "Enter your First matrix -->"
					echo
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							read -p "enter the value of $i, $j element " arr[$i,$j]
						done
					done
					# Print the matrix
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							echo -n "${arr[$i,$j]} "
						done
						echo
					done						
					echo "Enter your Second matrix -->"
					echo
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							read -p "enter the value of $i, $j element " Abhi[$i,$j]
						done
					done
					# Print the matrix:
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							echo -n "${Abhi[$i,$j]} "
						done
						echo
					done
					echo "Addition of Two Matrix is:"
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
								echo -n "$((arr[$i,$j]+Abhi[$i,$j])) "
						done
						echo
					done
					;;
				2)
					echo " "
					read -p "Enter the size of matrix: " n
					c=`expr $n - 1`
					declare -A arr
					declare -A Abhi
					echo "Enter your First matrix -->"
					echo
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							read -p "enter the value of $i, $j element " arr[$i,$j]
						done
					done
					# Print the matrix
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							echo -n "${arr[$i,$j]} "
						done
						echo
					done						
					echo "Enter your Second matrix -->"
					echo
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							read -p "enter the value of $i, $j element " Abhi[$i,$j]
						done
					done
					# Print the matrix:
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
							echo -n "${Abhi[$i,$j]} "
						done
						echo
					done
					echo "Addition of Two Matrix is:"
					for ((i=0;i<=c;i++))
					do
						for ((j=0;j<=c;j++))
						do
								echo -n "$((arr[$i,$j]-Abhi[$i,$j])) "
						done
						echo
					done
					;;
				3)
					res=0
					declare -A arr
					declare -A abhi
					declare -A result
					read -p "Enter your Row And Column of First Matrix : " row1 col1
					echo "Enter Your First Matrix "
					echo 
					for ((i=0;i<row1;i++))
					do
						for ((j=0;j<col1;j++))
						do
							read -p "Enter your $i,$j element : " arr[$i,$j]
						done
					done
					echo 
					read -p "Enter your Row and column of Second Matrix : " row2 col2
					echo "Enter your second Matrix "
					echo
					for ((i=0;i<row2;i++))
					do
						for ((j=0;j<col2;j++))
						do
							read -p "Enter your $i,$j element : " abhi[$i,$j]
						done
					done
					sum=0
					for ((i=0;i<row1;i++))
					do
						for ((j=0;j<col2;j++))
						do
							for ((k=0;k<row2;k++))
							do
								res=$((${arr[$i,$k]} * ${abhi[$k,$j]}))
								sum=$(($sum+$res))
							done
							result[$i,$j]=$sum
							sum=0
						done
					done
					echo
					echo "Multiplication of matrix is : "
					for ((i=0;i<row1;i++))
					do
						for ((j=0;j<col2;j++))
						do
							echo -n "${result[$i,$j]} "
						done
						echo
					done
						;;
				4)
					echo " "
					read -p "Enter the Row and Colomn of Matrix: " row col
					declare -A arr
					echo "Enter your matrix --> "
					echo
					for ((i=0;i<row;i++))
					do
						for ((j=0;j<col;j++))
						do
							read -p "enter the value of $i, $j element " arr[$i,$j]
						done
					done
					echo "Your matrix is : "
					for ((i=0;i<row;i++))
					do
						for ((j=0;j<col;j++))
						do
							echo -n "${arr[$i,$j]} "
						done
						echo
					done
					echo "Transpose of matrix is "
					for ((i=0;i<col;i++))
					do
						for ((j=0;j<row;j++))
						do
							echo -n "${arr[$j,$i]} "
						done
						echo
					done
					;;
			esac
			;;
		0)
			win="true"
			;;
	esac
done
