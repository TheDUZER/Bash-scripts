STR=$"This script converts a PDF to a (somewhat) readable text file, outputs it to a terminal, then deletes the newly made text file while leaving the original PDF in tact.\n\nType path to PDF file from current directory."
currentDirectory="$(pwd)/"
printf "$STR"
echo "$currentDirectory"
read filePath
echo $filePath
filePath2="${filePath:0:-4}.txt"
echo $filePath2
pdftotext "./$filePath2"
less -f "./$filePath2"
rm "./$filePath2"
