var Q = require('q');

import * as Utils from "./helpers/utils";
var type_bench = {
  CACHE_CLEAR : "CACHE_CLEAR",
  RM : "RM",
  NORMAL: "NORMAL"
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
    results[gest_paquet][framework][type_bench.CACHE_CLEAR] = cache_clear;
    results[gest_paquet][framework]['RM'] = rm;
    results[gest_paquet][framework]['NORMAL'] = normal;
  }
}

/*console.log(results['NPM']['ANGULAR']);
console.log(results['PNPM']['ANGULAR']);
console.log(results['YARN']['ANGULAR']);
console.log(results['NPM']['REACT']);
console.log(results['PNPM']['REACT']);
console.log(results['YARN']['REACT']);*/


var average = [];
for(var gest in results) {
  for (var frm in results[gest]) {
    if (!average[gest]) {
      average[gest] = [];
    }
    if (!average[gest][frm]) {
      average[gest][frm] = [];
    }
    average[gest][frm][type_bench.CACHE_CLEAR] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.CACHE_CLEAR])));
    average[gest][frm][type_bench.RM] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.RM])));
    average[gest][frm][type_bench.NORMAL] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.NORMAL])));
  }
}
console.log(average);
