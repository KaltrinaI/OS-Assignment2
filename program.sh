echo "================================================"
echo 1.Regjistro student
echo 2.Fshij student
echo 3.Shto nota
echo 4.Transkripta
echo 0.Fund
echo "==============================================="
while [ 1 -eq 1 ]
do
echo Zgjidh njerin nga opsionet!
read opt

if [ $opt -eq 1 ]
then
    ./register_student.sh
elif [ $opt -eq 2 ]
then
     ./fshij_student.sh
elif [ $opt -eq 3 ]
then
     ./add_grade.sh
elif [ $opt -eq 4 ]
then
     ./show_transcript.sh
elif [ $opt -eq 0 ]
then
    break
else
	echo Keni vendosur opsion te gabuar. Provoni perseri!
fi
done
