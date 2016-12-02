STR=$"This script converts a PDF to a (somewhat) readable text file, outputs it to a terminal, then deletes the newly made text file while leaving the original PDF in tact.\n\nType path to PDF file from current directory."
currentDirectory="$(pwd)/"
printf "$STR"
echo "$currentDirectory"
read filePath
echo $filePath
filePathh="${filePath:0:-4}.txt"
echo $filePathh
pdftotext "./$filePath"
less -f "./$filePathh"
rm "./$filePathh"
