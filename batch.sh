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
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular avec cache clear et rm: index "$index
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm angular cache clear rm occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

index=1
# npm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular avec rm: index "$index
	rm -rf node_modules
	(echo '' && echo 'construction npm angular rm occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

index=1
# npm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour angular : index "$index
	(echo '' && echo 'construction npm angular occurs '$index && time npm install) &>> ../results/benchmarkNpmAngular.txt

	index=$(($index+1))
done

cd ..

##############################
##         NPM REACT        ##
##############################

cd npmreact
echo Lancement de la construction npm pour un projet React
npm -v >> ../results/benchmarkNpmReact.txt
index=1
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react avec cache clear et rm: index "$index
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm react cache clear rm occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

index=1
# npm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react avec rm: index "$index
	rm -rf node_modules
	(echo '' && echo 'construction npm react rm occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

index=1
# npm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react : index "$index
	(echo '' && echo 'construction npm react occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

cd ..

##############################
##        PNPM ANGULAR      ##
##############################

cd pnpmangular
echo Lancement de la construction pnpm pour un projet Angular
pnpm -v >> ../results/benchmarkPnpmAngular.txt
index=1
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular avec cache clear et rm: index "$index
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm angular cache clear rm occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

index=1
# pnpm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular avec rm: index "$index
	rm -rf node_modules
	(echo '' && echo 'construction pnpm angular rm occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

index=1
# pnpm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour angular : index "$index
	(echo '' && echo 'construction pnpm angular occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAngular.txt

	index=$(($index+1))
done

cd ..

##############################
##        PNPM REACT        ##
##############################

cd pnpmreact
echo Lancement de la construction pnpm pour un projet React
pnpm -v >> ../results/benchmarkPnpmReact.txt
index=1
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react avec cache clear et rm: index "$index
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm react cache clear rm occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

index=1
# pnpm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react avec rm: index "$index
	rm -rf node_modules
	(echo '' && echo 'construction pnpm react rm occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

index=1
# pnpm -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react : index "$index
	(echo '' && echo 'construction pnpm react occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

cd ..

##############################
##        YARN ANGULAR      ##
##############################

cd yarnangular
echo Lancement de la construction yarn pour un projet Angular
yarn -v >> ../results/benchmarkYarnAngular.txt
index=1
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular avec cache clear et rm: index "$index
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction pnpm angular cache clear rm occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

index=1
# yarn -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular avec rm: index "$index
	rm -rf node_modules
	(echo '' && echo 'construction yarn angular rm occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

index=1
# yarn -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour angular : index "$index
	(echo '' && echo 'construction yarn angular occurs '$index && time yarn install) &>> ../results/benchmarkYarnAngular.txt

	index=$(($index+1))
done

cd ..

##############################
##        YARN REACT        ##
##############################

cd yarnreact
echo Lancement de la construction yarn pour un projet React
yarn -v >> ../results/benchmarkYarnReact.txt
index=1
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react avec cache clear et rm: index "$index
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn react cache clear rm occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

index=1
# yarn -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react avec rm: index "$index
	rm -rf node_modules
	(echo '' && echo 'construction yarn react rm occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

index=1
# yarn -v >> benchmark.txt
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react : index "$index
	(echo '' && echo 'construction yarn react occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

cd ..


echo "Fin des installs"
 
exit 0
