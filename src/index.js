var Q = require('q');

import * as Utils from "./helpers/utils";
var type_bench = {
  CACHE_CLEAR : "cacheClear",
  RM : "rm",
  NORMAL: "normal"
}

var gests_paquet = {
  NPM : "NPM",
  PNPM : "PNPM",
  YARN: "YARN"
}

var frameworks = {
  ANGULAR : "ANGULAR",
  REACT : "REACT"
}

String.prototype.toCamelCase = function() {
  return this.substring(0,1).toUpperCase() + this.substring(1).toLowerCase();
};

let results = [];
for(var framework in frameworks) {
  for(var gest_paquet in gests_paquet) {
    let current_bench;
    let cache_clear=[];
    let rm=[];
    let normal=[];
    if (!results[gest_paquet]) {
      results[gest_paquet] = [];
    }
    if (!results[gest_paquet][framework]) {
      results[gest_paquet][framework] = [];
    }
    

    let clean_benchmark = Utils.cleanBenchmark(Utils.readBenchmark(gest_paquet, framework));
    let tt = ["AAAAAA", "BBBBBB", "CCCCCC", "DDDDDD"];
    clean_benchmark.toString().split('\n').forEach(function (line) {
      if (line.indexOf('cache clear rm') != -1) {
        current_bench = type_bench.CACHE_CLEAR;
      } else if (line.indexOf('rm occurs') != -1) {
        current_bench = type_bench.RM;
      } else if (line.indexOf(' occurs') != -1) {
        current_bench = type_bench.NORMAL;
      } else if (line.indexOf('real') != -1) {
        if (current_bench === type_bench.CACHE_CLEAR) {
          cache_clear.push(Utils.convertTime(line));
        } else if (current_bench === type_bench.RM) {
          rm.push(Utils.convertTime(line));
        } else if (current_bench === type_bench.NORMAL) {
          normal.push(Utils.convertTime(line));
        }
      }

    });
//    results[gest_paquet] = [];
//    results[gest_paquet][framework] = [];
    results[gest_paquet][framework]['CACHE_CLEAR'] = cache_clear;
    results[gest_paquet][framework]['RM'] = rm;
    results[gest_paquet][framework]['NORMAL'] = normal;
  }
}
//console.log(results);
console.log(results['NPM']['ANGULAR']);
console.log(results['PNPM']['ANGULAR']);
console.log(results['YARN']['ANGULAR']);
console.log(results['NPM']['REACT']);
console.log(results['PNPM']['REACT']);
console.log(results['YARN']['REACT']);

//process.exit();



/*
for(var framework in frameworks) {
  console.log("current framework " + framework)
  for(var gest_paquet in gests_paquet) {
    console.log("current gest paquet " + gest_paquet)
    let current_bench;
    console.log("je teste le framework " + framework + " avec le gestionnaire de paquet " + gest_paquet);
    let clean_benchmark = Utils.cleanBenchmark(Utils.readBenchmark(gest_paquet, framework));
    let cache_clear=[];
    let rm=[];
    let normal=[];
    results[gest_paquet] = [];
    Utils.bahbah(clean_benchmark, cache_clear, rm, normal, current_bench);
      /*clean_benchmark.toString().split('\n').forEach(function (line) { 
        if (line.indexOf('cache clear rm') != -1) {
          current_bench = type_bench.CACHE_CLEAR;
        } else if (line.indexOf('rm occurs') != -1) {
          current_bench = type_bench.RM;
        } else if (line.indexOf(' occurs') != -1) {
          current_bench = type_bench.NORMAL;
        } else if (line.indexOf('real') != -1) {
          if (current_bench === type_bench.CACHE_CLEAR) {
            cache_clear.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.RM) {
            rm.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.NORMAL) {
            normal.push(Utils.convertTime(line));
          }
        }
      });* /
 
      results[gest_paquet][framework] = [];
      results[gest_paquet][framework]['CACHE_CLEAR'] = cache_clear;
      results[gest_paquet][framework]['RM'] = rm;
      results[gest_paquet][framework]['NORMAL'] = normal;
      
      //console.log(results[gest_paquet][framework]);
      
      cache_clear = [];
      cache_clear.length = 0;
      rm = [];
      normal = [];

  }
}

*/







/*
for(var framework in frameworks) {
  console.log("current framework " + framework)
  for(var gest_paquet in gests_paquet) {
    console.log("current gest paquet " + gest_paquet)
    let current_bench;
    console.log("je teste le framework " + framework + " avec le gestionnaire de paquet " + gest_paquet);
    let clean_benchmark = Utils.cleanBenchmark(Utils.readBenchmark(gest_paquet, framework));
    let cache_clear=[];
    let rm=[];
    let normal=[];
    results[gest_paquet] = [];
    let toto = Utils.shallowCopy(gest_paquet);
    
    Q.fcall(function() {
      cache_clear = [];
      cache_clear.length = 0;
      rm = [];
      normal = [];
      return;
    }).then(function(){
      clean_benchmark.toString().split('\n').forEach(function (line) { 
        if (line.indexOf('cache clear rm') != -1) {
          current_bench = type_bench.CACHE_CLEAR;
        } else if (line.indexOf('rm occurs') != -1) {
          current_bench = type_bench.RM;
        } else if (line.indexOf(' occurs') != -1) {
          current_bench = type_bench.NORMAL;
        } else if (line.indexOf('real') != -1) {
          if (current_bench === type_bench.CACHE_CLEAR) {
            cache_clear.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.RM) {
            rm.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.NORMAL) {
            normal.push(Utils.convertTime(line));
          }
        }
      });
      return;
    }).then(function(){
      results[gest_paquet][framework] = [];
      results[gest_paquet][framework]['CACHE_CLEAR'] = cache_clear;
      results[gest_paquet][framework]['RM'] = rm;
      results[gest_paquet][framework]['NORMAL'] = normal;
      
      //console.log(results[gest_paquet][framework]);
      
      cache_clear = [];
      cache_clear.length = 0;
      rm = [];
      normal = [];
      return;
    }).done(function(){
      console.log(results);
    });
  }
}
*/

