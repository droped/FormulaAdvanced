#!/bin/sh

echo "Building FormulaAdvanced..."

echo "Building the database"
cd 0-Database
./build.sh

#echo "Building the Analysis Part"
#cd ..
#cd 1-Analysis\ Part
#./build.sh

echo "Building the core"
cd ..
cd 2-FormulaPro
./build.sh

echo "Building References"
cd ..
cd 3-References
./build.sh

echo "Building the libraries"
cd ..
cd 4-Global\ Libraries
./build.sh

cd ..

echo "Creating the whole thing..."
cat Database.big.lua lib.big.lua FormulaPro.big.lua Reference.big.lua main.lua > FormulaPro_fullcode
luna FormulaPro_fullcode.lua FormulaPro.tns

echo "Done building"

echo "Cleaning up"
rm *.big.lua

echo "Done. Enjoy!"
