#!/bin/bash
# Indique au système que l'argument qui suit est le programme utilisé pour exécuter ce fichier
# En règle générale, les "#" servent à mettre en commentaire le texte qui suit comme ici


#yarn -v >> benchmark.txt
#pnpm -v >> benchmark.txt

##############################
##         NPM ANGULAR      ##
##############################

cd npmangular
echo Lancement de la construction npm pour un projet Angular
npm -v >> ../results/benchmarkNpmAngular.txt
index=1
while [ "$index" != 2 ]
do
	echo "Je fais npm install pour angular avec cache clear et rm: index "$index
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm angular cache clear rm occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

echo "Fin des installs"
 
exit 0
