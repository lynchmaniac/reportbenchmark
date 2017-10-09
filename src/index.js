var Q = require('q');
let fs = require('fs');

import * as Utils from "./helpers/utils";
var type_bench = {
  CLEAN : "CLEAN",
  FULL : "FULL",
  CACHE_LOCKFILE: "CACHE_LOCKFILE",
  CACHE: "CACHE",
  LOCKFILE: "LOCKFILE"
}

var gests_paquet = {
  NPM : "NPM",
  PNPM: "PNPM",
  YARN: "YARN"
}

var frameworks = {
  ANGULAR : "ANGULAR",
  REACT : "REACT", 
  EMBER: "EMBER",
  ALOT: "ALOT",
  MEDIUM: "MEDIUM"
}

String.prototype.toCamelCase = function() {
  return this.substring(0,1).toUpperCase() + this.substring(1).toLowerCase();
};

if (process.argv[2] === "generate") {
  const regex1 = /\[FWK\]/gm;
  const regex2 = /\[Fwk\]/gm;
  const regex3 = /\[fwk\]/gm;
  let total = "#!/bin/bash\n\ncd ../pnpm.devfest/npmangular \n\n";

  for(var gest_paquet in gests_paquet) {
    for(var framework in frameworks) {
    
      var template = fs.readFileSync(gest_paquet.toLowerCase() + "Template.txt", "utf8");
      template = template.replace(regex1, framework.toUpperCase());
      template = template.replace(regex2, framework.toCamelCase())
      template = template.replace(regex3, framework.toLowerCase());
      total += template + "\n\n\n";
    }
  }
  total += "echo \"Fin des installs\"";
  total += "exit 0";
  fs.writeFileSync("benchmark.sh", total, "utf8");
} else {
  
  let results = [];
  for(var gest_paquet in gests_paquet) {
      for(var framework in frameworks) {

      
      let current_bench;
      let clean=[];
      let full=[];
      let cacheLockfile=[];
      let cache=[];
      let lockfile=[];

      if (!results[gest_paquet]) {
        results[gest_paquet] = [];
      }
      if (!results[gest_paquet][framework]) {
        results[gest_paquet][framework] = [];
      }
      

      let clean_benchmark = Utils.cleanBenchmark(Utils.readBenchmark(gest_paquet, framework));
      
      clean_benchmark.toString().split('\n').forEach(function (line) {

        if (line.indexOf('cache no - lockfile no - node_modules no -') != -1) {
          current_bench = type_bench.CLEAN;
        } else if (line.indexOf('cache yes - lockfile yes - node_modules yes -') != -1) {
          current_bench = type_bench.FULL;
        } else if (line.indexOf('cache yes - lockfile yes - node_modules no -') != -1) {
          current_bench = type_bench.CACHE_LOCKFILE;
        } else if (line.indexOf('cache no - lockfile yes - node_modules no -') != -1) {
          current_bench = type_bench.LOCKFILE;
        } else if (line.indexOf('cache yes - lockfile no - node_modules no -') != -1) {
          current_bench = type_bench.CACHE;
        } else if (line.indexOf('real') > -1) {
          if (current_bench === type_bench.CLEAN) {
            //clean.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.FULL) {
            //full.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.CACHE_LOCKFILE) {
            //cacheLockfile.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.LOCKFILE) {
            //lockfile.push(Utils.convertTime(line));
          } else if (current_bench === type_bench.CACHE) {
            //cache.push(Utils.convertTime(line));        
          }
        }
      });
      results[gest_paquet][framework][type_bench.CLEAN] = clean;
      results[gest_paquet][framework][type_bench.FULL] = full;
      results[gest_paquet][framework][type_bench.CACHE_LOCKFILE] = cacheLockfile;
      results[gest_paquet][framework][type_bench.CACHE] = cache;
      results[gest_paquet][framework][type_bench.LOCKFILE] = lockfile;
    }
  }

  var average = [];
  for(var gest in results) {
    for (var frm in results[gest]) {
      if (!average[gest]) {
        average[gest] = [];
      }
      if (!average[gest][frm]) {
        average[gest][frm] = [];
      }
      average[gest][frm][type_bench.CLEAN] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.CLEAN])));
      average[gest][frm][type_bench.FULL] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.FULL])));
      average[gest][frm][type_bench.CACHE_LOCKFILE] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.CACHE_LOCKFILE])));
      average[gest][frm][type_bench.CACHE] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.CACHE])));
      average[gest][frm][type_bench.LOCKFILE] = Utils.convertHumanTime(parseInt(Utils.get_average(results[gest][frm][type_bench.LOCKFILE])));
    }
  }
  console.log(average);
}