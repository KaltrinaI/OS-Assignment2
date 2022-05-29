echo Jep id
read id

file="$id.transcripts.db"
echo Lendet qe i ndjek studenti me id $id
while read -r line
do
	echo $line
done < "$file"

awk -F"," '{x+=$3}END{print "Numri i kredive te provuara: " x}' ./$file
awk -F"," '{if ($4 > 5) x+=$3}END{print "Numri i kredive te fituara " x}' ./$file
awk -F"," '{if ($4 > 5) {x+=$3*$4; y+=$3}}END{print "GPA " x/y}' ./$file


