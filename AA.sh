#!/bin/bash

cd ../pnpm.devfest/npmangular 

echo ""
echo "##############################"
echo "##         NPM ANGULAR      ##"
echo "##############################"
echo ""

cd ../npmangular
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
echo "##         NPM REACT      ##"
echo "##############################"
echo ""

cd ../npmreact
echo Lancement de la construction npm pour un projet React
npm -v >> ../results/benchmarkNpmReact.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f package-lock.json
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm react cache no - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction npm react cache yes - lockfile yes - node_modules yes - occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction npm react cache yes - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f package-lock.json
	(echo '' && echo 'construction npm react cache yes - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour react avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm react cache no - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmReact.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##         NPM EMBER      ##"
echo "##############################"
echo ""

cd ../npmember
echo Lancement de la construction npm pour un projet Ember
npm -v >> ../results/benchmarkNpmEmber.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour ember avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f package-lock.json
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm ember cache no - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour ember : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction npm ember cache yes - lockfile yes - node_modules yes - occurs '$index && time npm install) &>> ../results/benchmarkNpmEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour ember avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction npm ember cache yes - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour ember avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f package-lock.json
	(echo '' && echo 'construction npm ember cache yes - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmEmber.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour ember avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm ember cache no - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmEmber.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##         NPM ALOT      ##"
echo "##############################"
echo ""

cd ../npmalot
echo Lancement de la construction npm pour un projet Alot
npm -v >> ../results/benchmarkNpmAlot.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour alot avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f package-lock.json
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm alot cache no - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour alot : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction npm alot cache yes - lockfile yes - node_modules yes - occurs '$index && time npm install) &>> ../results/benchmarkNpmAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour alot avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction npm alot cache yes - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour alot avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f package-lock.json
	(echo '' && echo 'construction npm alot cache yes - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAlot.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour alot avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm alot cache no - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmAlot.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##         NPM MEDIUM      ##"
echo "##############################"
echo ""

cd ../npmmedium
echo Lancement de la construction npm pour un projet Medium
npm -v >> ../results/benchmarkNpmMedium.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour medium avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f package-lock.json
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm medium cache no - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour medium : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction npm medium cache yes - lockfile yes - node_modules yes - occurs '$index && time npm install) &>> ../results/benchmarkNpmMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour medium avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction npm medium cache yes - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour medium avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f package-lock.json
	(echo '' && echo 'construction npm medium cache yes - lockfile no - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmMedium.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais npm install pour medium avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	npm cache clear --force
	(echo '' && echo 'construction npm medium cache no - lockfile yes - node_modules no - occurs '$index && time npm install) &>> ../results/benchmarkNpmMedium.txt

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
echo "##        PNPM REACT      ##"
echo "##############################"
echo ""

cd ../pnpmreact
echo Lancement de la construction pnpm pour un projet React
pnpm -v >> ../results/benchmarkPnpmReact.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f shrinkwrap.yaml
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm react cache no - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction pnpm react cache yes - lockfile yes - node_modules yes - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction pnpm react cache yes - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f shrinkwrap.yaml
	(echo '' && echo 'construction pnpm react cache yes - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour react avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm react cache no - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmReact.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##        PNPM EMBER      ##"
echo "##############################"
echo ""

cd ../pnpmember
echo Lancement de la construction pnpm pour un projet Ember
pnpm -v >> ../results/benchmarkPnpmEmber.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour ember avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f shrinkwrap.yaml
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm ember cache no - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour ember : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction pnpm ember cache yes - lockfile yes - node_modules yes - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour ember avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction pnpm ember cache yes - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour ember avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f shrinkwrap.yaml
	(echo '' && echo 'construction pnpm ember cache yes - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmEmber.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour ember avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm ember cache no - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmEmber.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##        PNPM ALOT      ##"
echo "##############################"
echo ""

cd ../pnpmalot
echo Lancement de la construction pnpm pour un projet Alot
pnpm -v >> ../results/benchmarkPnpmAlot.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour alot avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f shrinkwrap.yaml
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm alot cache no - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour alot : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction pnpm alot cache yes - lockfile yes - node_modules yes - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour alot avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction pnpm alot cache yes - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour alot avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f shrinkwrap.yaml
	(echo '' && echo 'construction pnpm alot cache yes - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAlot.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour alot avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm alot cache no - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmAlot.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##        PNPM MEDIUM      ##"
echo "##############################"
echo ""

cd ../pnpmmedium
echo Lancement de la construction pnpm pour un projet Medium
pnpm -v >> ../results/benchmarkPnpmMedium.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour medium avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f shrinkwrap.yaml
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm medium cache no - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour medium : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction pnpm medium cache yes - lockfile yes - node_modules yes - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour medium avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction pnpm medium cache yes - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour medium avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f shrinkwrap.yaml
	(echo '' && echo 'construction pnpm medium cache yes - lockfile no - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmMedium.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais pnpm install pour medium avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	pnpm cache clear --force
	(echo '' && echo 'construction pnpm medium cache no - lockfile yes - node_modules no - occurs '$index && time pnpm install) &>> ../results/benchmarkPnpmMedium.txt

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


echo ""
echo "##############################"
echo "##         YARN REACT     ##"
echo "##############################"
echo ""

cd ../yarnreact
echo Lancement de la construction yarn pour un projet React
yarn -v >> ../results/benchmarkYarnReact.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f yarn.lock
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn react cache no - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction yarn react cache yes - lockfile yes - node_modules yes - occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction yarn react cache yes - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f yarn.lock
	(echo '' && echo 'construction yarn react cache yes - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour react avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn react cache no - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnReact.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##         YARN EMBER     ##"
echo "##############################"
echo ""

cd ../yarnember
echo Lancement de la construction yarn pour un projet Ember
yarn -v >> ../results/benchmarkYarnEmber.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour ember avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f yarn.lock
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn ember cache no - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour ember : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction yarn ember cache yes - lockfile yes - node_modules yes - occurs '$index && time yarn install) &>> ../results/benchmarkYarnEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour ember avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction yarn ember cache yes - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnEmber.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour ember avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f yarn.lock
	(echo '' && echo 'construction yarn ember cache yes - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnEmber.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour ember avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn ember cache no - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnEmber.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##         YARN ALOT     ##"
echo "##############################"
echo ""

cd ../yarnalot
echo Lancement de la construction yarn pour un projet Alot
yarn -v >> ../results/benchmarkYarnAlot.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour alot avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f yarn.lock
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn alot cache no - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour alot : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction yarn alot cache yes - lockfile yes - node_modules yes - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour alot avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction yarn alot cache yes - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAlot.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour alot avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f yarn.lock
	(echo '' && echo 'construction yarn alot cache yes - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAlot.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour alot avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn alot cache no - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnAlot.txt

	index=$(($index+1))
done


echo ""
echo "##############################"
echo "##         YARN MEDIUM     ##"
echo "##############################"
echo ""

cd ../yarnmedium
echo Lancement de la construction yarn pour un projet Medium
yarn -v >> ../results/benchmarkYarnMedium.txt
index=1
# cache				
# lockfile		
# node_modules	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour medium avec cache clear et rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -f yarn.lock
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn medium cache no - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules	X	
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour medium : index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	OUI"
	(echo '' && echo 'construction yarn medium cache yes - lockfile yes - node_modules yes - occurs '$index && time yarn install) &>> ../results/benchmarkYarnMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour medium avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	(echo '' && echo 'construction yarn medium cache yes - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnMedium.txt

	index=$(($index+1))
done

index=1
# cache			X	
# lockfile		
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour medium avec rm: index "$index
	echo "cache 		OUI"
	echo "lockfile  	NON"
	echo "node_modules	NON"
	rm -rf node_modules
	rm -f yarn.lock
	(echo '' && echo 'construction yarn medium cache yes - lockfile no - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnMedium.txt

	index=$(($index+1))
done

index=1
# cache				
# lockfile		X
# node_modules		
while [ "$index" != 6 ]
do
	echo "Je fais yarn install pour medium avec rm: index "$index
	echo "cache 		NON"
	echo "lockfile  	OUI"
	echo "node_modules	NON"
	rm -rf node_modules
	yarn cache clean
	(echo '' && echo 'construction yarn medium cache no - lockfile yes - node_modules no - occurs '$index && time yarn install) &>> ../results/benchmarkYarnMedium.txt

	index=$(($index+1))
done


echo "Fin des installs"exit 0