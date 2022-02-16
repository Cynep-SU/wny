ni FOLDER1 -itemtype directory
ni FOLDER2 -itemtype directory
sl FOLDER1
ni one.txt -itemtype file
echo " " > two.txt
ni three.txt -itemtype file
ni four.txt -itemtype file
sl ..
cp -path ".\FOLDER1\*.txt" -destination ".\FOLDER2"
sl FOLDER2
ls *.txt | rni -newname { $_.name -replace '.txt','.bak'}
sl ..