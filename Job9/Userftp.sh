#!/bin/bash

#line=Shell_Userlist.csv

cat Shell_Userlist.csv

while read line
do
echo "enregistrement est : $line"
echo ""
done < Shell_Userlist.csv

while IFS="," read -r col_id col_prenom col_nom col_mdp col_role
do
echo "ID: $col_id"
echo "Prénom: $col_prenom"
echo "Nom: $col_nom"
echo "Mdp: $col_mdp"
echo "Rôle: $col_role"
echo ""
adduser $col_prenom


done < <(tail -n +2 Shell_Userlist.csv)


