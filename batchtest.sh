#!/bin/bash
# Indique au système que l'argument qui suit est le programme utilisé pour exécuter ce fichier
# En règle générale, les "#" servent à mettre en commentaire le texte qui suit comme ici


#yarn -v >> benchmark.txt
#pnpm -v >> benchmark.txt

echo ""
echo "##############################"
echo "##         NPM ANGULAR      ##"
echo "##############################"
echo ""

cd ../pnpm.devfest/npmangular
echo Lancement de la construction npm pour un projet Angular
npm -v >> ../results/benchmarkNpmAngular.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f package-lock.json
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm angular cache no - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction npm angular cache yes - lockfile yes - node_modules yes - occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction npm angular cache yes - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f package-lock.json
	(echo '' && echo 'construction npm angular cache yes - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm angular cache no - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

echo ""
echo "##############################"
echo "##        PNPM ANGULAR      ##"
echo "##############################"
echo ""

cd ../pnpmangular
echo Lancement de la construction pnpm pour un projet Angular
pnpm -v >> ../results/benchmarkPnpmAngular.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f shrinkwrap.yaml
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm angular cache no - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction pnpm angular cache yes - lockfile yes - node_modules yes - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction pnpm angular cache yes - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f shrinkwrap.yaml
	(echo '' && echo 'construction pnpm angular cache yes - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm angular cache no - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

echo ""
echo "##############################"
echo "##         YARN ANGULAR     ##"
echo "##############################"
echo ""

cd ../yarnangular
echo Lancement de la construction yarn pour un projet Angular
yarn -v >> ../results/benchmarkYarnAngular.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f yarn.lock
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn angular cache no - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction yarn angular cache yes - lockfile yes - node_modules yes - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction yarn angular cache yes - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f yarn.lock
	(echo '' && echo 'construction yarn angular cache yes - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn angular cache no - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

echo "Fin des installs"
 
exit 0
