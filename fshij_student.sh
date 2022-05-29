echo Jep id e studentit
read id
if grep -q -i $id students.db;
then
	echo "A jeni te sigurte per fshirjen e studentit (po/jo)"
	read answer
	if [ "$answer" = "po" ]
	then
		grep -i -v $id students.db > students.tmp
		rm -f students.db
		mv students.tmp students.db
		rm $id.transcripts.db
		echo Studenti me id $id u fshi me sukses!
	fi
else
	echo Studenti nuk u gjet!
fi
