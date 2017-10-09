"use strict";

// lodash
//import _ from 'lodash/array';
import fs from 'fs';

/*
  UTILITAIRES EN RAPPORT AVEC LES FICHIERS
   */
/**
 * Renvoie le nombre de tweet réçu par Léa.
 * Le nombre est stocké sur un fichier présent sur
 * le raspberry.
 */
export const getCurrentRank = (context) => {
  context.rank = fs.readFileSync(Configuration.RANK_FILE, "utf8");
};

var type_bench = {
  CACHE_CLEAR : "cacheClear",
  RM : "rm",
  NORMAL: "normal"
}


export const get_average = (tab) => {
  let average = 0;
  if (tab.length == 0) {
    return 0;
  }
  for (var l in tab) {
    average += tab[l];
  }
  return parseInt(average) / tab.length;

}


/**
 * Sauvegarde le tweet courant.
 * Un contrôle est effectué pour ne pas enregistrer
 * 2 tweets identique.
 */
export const readBenchmark = (gest_paquet, framework) => {
    console.log('lecture du fichier benchmark ', gest_paquet.toCamelCase(), framework.toCamelCase());
    
    let benchFile = fs.readFileSync('../pnpm.devfest/results/benchmark' + gest_paquet.toCamelCase() + framework.toCamelCase() + '.txt', 'utf-8');
    return benchFile;
};

export const cleanBenchmark = (bench) => {
    let benchCleaned;
    bench.toString().split('\n').forEach(function (line) { 
      //if (line.indexOf('npm WARN') === -1 && line.indexOf('│') === -1) {
      if ((line.indexOf('real') != -1 || 
          line.indexOf('user') != -1 || 
          line.indexOf('sys') != -1 || 
          line.indexOf('construction') != -1) && (line.indexOf('│') === -1)) {
          //console.log(line);
          benchCleaned += line + "\n";
      }
      //fs.appendFileSync("./output.txt", line.toString() + "\n");
    });
    return benchCleaned;
};



export const categorizeLine = (line) => {
    let benchCleaned;
    if ((line.indexOf('real') != -1 || 
        line.indexOf('user') != -1 || 
        line.indexOf('sys') != -1 || 
        line.indexOf('construction') != -1) && (line.indexOf('│') === -1)) {
      console.log(line);
    }
};

export const convertTime = (time) => {
  // time real\tm[0-9]*.[0-9]3s
  //console.log("**** ", time);
  
    let time_convert;
    if (time.indexOf("real") != -1) {
      time = time.substring(5, time.length);
    }
    let minutes = time.split('m')[0];
    let secondes = time.split('m')[1].split('.')[0];
    let millisecondes = time.split('m')[1].split('.')[1].split('s')[0]; 
    time_convert = (minutes * 60) + parseInt(secondes, 10); // en s
    time_convert = time_convert * 1000 + parseInt(millisecondes, 10);

    return time_convert;
};

export const convertHumanTime = (time_in_ms) => {
  // 106864
    let time_convert;
    let time_in_s = time_in_ms / 1000;

    let millisecondes = time_in_s.toString().split('.')[1];
    var minutes = Math.floor(time_in_s / 60)
    var seconds = Math.floor(time_in_s - minutes * 60);
    time_convert = "Time : " + minutes + " min " + seconds + " s " + millisecondes + " ms";
    return time_convert;
};

/**
 * Sauvegarde le nombre de tweets reçu par Léa.
 * Le nombre est stocké sur un fichier présent sur
 * le raspberry.
 * @param rank le nombre de tweet reçu
 */
/*export const updateAndSaveRankTweet = (tweet, context) => {
  if (!isAdmin(tweet.screenName) && tweet.fresh) {
    let result = parseInt(context.rank) + 1;
    context.rank = result;
    try {
      fs.writeFileSync(Configuration.RANK_FILE, context.rank, { "encoding": 'utf8' });
    } catch (err) {
      logger.log('error', err);
    }
  }
}*/






