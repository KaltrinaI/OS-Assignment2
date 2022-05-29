echo Jepni id, emri, mbiemrin dhe departamentin per studentin!
read id emri mbiemri departamenti
echo $id, $emri, $mbiemri, $departamenti >>students.db
touch "$id.transcripts.db"
echo Studenti me id $id u regjistrua ne databaze

