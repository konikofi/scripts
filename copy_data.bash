#!/bin/bash

print_help (){
  echo ""
  echo "Usage:"
  echo "`basename $0` [dir] [date]"
  echo " directory to make for test results"
  echo " beginning date string 2014-04-11"
  echo " ./copy_data.bash wifi_perf_air_ct523-vs-all.bash-20140412 2014-04-12"
  echo ""
}

if [ $# -eq 0 ]; then
  print_help
  exit 1
fi

DIR=$1/
DAT=$2
DOC="/home/konikofi/Documents/"
RES="/home/konikofi/btbits/testing-scripts"
VAR="/var/www/html/"

mkdir $VAR$DIR

find "$RES" -maxdepth 1 -name "LOG*" -exec mv {} "$VAR$DIR" \;

find "$RES" -maxdepth 1 -name "auto_wifi_test_logfile*.txt" -exec mv {} "$VAR$DIR" \;

for file in $DOC$DAT*'/script-report-'*
   do
      report="${file#$DOC$DAT-}"
      prefix="${report%/*}"
      case $prefix in
      'LANforge VAP 2.4GHz Open')
          NEW="${prefix/LANforge VAP 2.4GHz Open/script-report-LF-VAP-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'LANforge VAP 5GHz Open')
          NEW="${prefix/LANforge VAP 5GHz Open/script-report-LF-VAP-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'LANforge AC VAP 2.4GHz Open')
          NEW="${prefix/LANforge AC VAP 2.4GHz Open/script-report-LF-AC-VAP-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'LANforge AC VAP 5GHz Open')
          NEW="${prefix/LANforge AC VAP 5GHz Open/script-report-LF-AC-VAP-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear4500(v1.0.1.40_1.0.68) 2.4GHz Open' )
          NEW="${prefix/Netgear4500(v1.0.1.40_1.0.68) 2.4GHz Open/script-report-Netgear4500-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear4500(v1.0.1.40_1.0.68) 5GHz Open')
          NEW="${prefix/Netgear4500(v1.0.1.40_1.0.68) 5GHz Open/script-report-Netgear4500-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear3700v2(1.0.0.12) 2.4GHz Open')
          NEW="${prefix/Netgear3700v2(1.0.0.12) 2.4GHz Open/script-report-Netgear3700v2-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear3700v2(1.0.0.12) 5GHz Open')
          NEW="${prefix/Netgear3700v2(1.0.0.12) 5GHz Open/script-report-Netgear3700v2-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear3700v2 with DDWRT(v24-sp2-03-25-13) 2.4GHz Open')
          NEW="${prefix/Netgear3700v2 with DDWRT(v24-sp2-03-25-13) 2.4GHz Open/script-report-DDWRT-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear3700v2 with DDWRT(v24-sp2-03-25-13) 5GHz Open')
          NEW="${prefix/Netgear3700v2 with DDWRT(v24-sp2-03-25-13) 5GHz Open/script-report-DDWRT-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear3800(CeroWRT-3.10.50-1) 2.4GHz Open')
          NEW="${prefix/Netgear3800(CeroWRT-3.10.50-1) 2.4GHz Open/script-report-Netgear3800-CeroWRT-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear3800(CeroWRT-3.10.50-1) 5GHz Open')
          NEW="${prefix/Netgear3800(CeroWRT-3.10.50-1) 5GHz Open/script-report-Netgear3800-CeroWRT-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'DLink DGL-5500(1.11b03) 2.4GHz Open')
          NEW="${prefix/DLink DGL-5500(1.11b03) 2.4GHz Open/script-report-DGL5500-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'DLink DGL-5500(1.11b03) 5GHz Open')
          NEW="${prefix/DLink DGL-5500(1.11b03) 5GHz Open/script-report-DGL5500-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear6300(v1.0.2.70_1.0.50) 2.4GHz Open')
          NEW="${prefix/Netgear6300(v1.0.2.70_1.0.50) 2.4GHz Open/script-report-Netgear6300-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear6300(v1.0.2.70_1.0.50) 5GHz Open')
          NEW="${prefix/Netgear6300(v1.0.2.70_1.0.50) 5GHz Open/script-report-Netgear6300-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear7000(dd-wrt-23884M) 2.4GHz Open')
          NEW="${prefix/Netgear7000(dd-wrt-23884M) 2.4GHz Open/script-report-Netgear7000-ddwrt-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear7000(dd-wrt-23884M) 5GHz Open')
          NEW="${prefix/Netgear7000(dd-wrt-23884M) 5GHz Open/script-report-Netgear7000-ddwrt-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear7000(v1.0.3.60_1.1.27) 2.4GHz Open')
          NEW="${prefix/Netgear7000(v1.0.3.60_1.1.27) 2.4GHz Open/script-report-Netgear7000-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear7000(v1.0.3.60_1.1.27) 5GHz Open')
          NEW="${prefix/Netgear7000(v1.0.3.60_1.1.27) 5GHz Open/script-report-Netgear7000-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear7000(v1.0.5.48_1.1.79) 2.4GHz Open')
          NEW="${prefix/Netgear7000(v1.0.5.48_1.1.79) 2.4GHz Open/script-report-Netgear7000-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear7000(v1.0.5.48_1.1.79) 5GHz Open')
          NEW="${prefix/Netgear7000(v1.0.5.48_1.1.79) 5GHz Open/script-report-Netgear7000-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear8000(v1.0.3.4_1.1.2) 2.4GHz Open')
          NEW="${prefix/Netgear8000(v1.0.3.4_1.1.2) 2.4GHz Open/script-report-Netgear8000-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Netgear8000(v1.0.3.4_1.1.2) 5GHz Open')
          NEW="${prefix/Netgear8000(v1.0.3.4_1.1.2) 5GHz Open/script-report-Netgear8000-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Linksys1900(1.1.7.160582) 2.4GHz Open')
          NEW="${prefix/Linksys1900(1.1.7.160582) 2.4GHz Open/script-report-Linksys1900-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Linksys1900(1.1.7.160582) 5GHz Open')
          NEW="${prefix/Linksys1900(1.1.7.160582) 5GHz Open/script-report-Linksys1900-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AsusRT-AC66R(3.0.0.4.374_5517) 2.4GHz Open')
          NEW="${prefix/AsusRT-AC66R(3.0.0.4.374_5517) 2.4GHz Open/script-report-AsusRT-AC66R-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AsusRT-AC66R(3.0.0.4.374_5517) 5GHz Open')
          NEW="${prefix/AsusRT-AC66R(3.0.0.4.374_5517) 5GHz Open/script-report-AsusRT-AC66R-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AsusRT-AC87R(3.0.0.4.378_4950) 2.4GHz Open')
          NEW="${prefix/AsusRT-AC87R(3.0.0.4.378_4950) 2.4GHz Open/script-report-AsusRT-AC87R-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AsusRT-AC87R(3.0.0.4.378_4950) 5GHz Open')
          NEW="${prefix/AsusRT-AC87R(3.0.0.4.378_4950) 5GHz Open/script-report-AsusRT-AC87R-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Ruckus7982(2.1.0.0.56) 2.4GHz Open')
          NEW="${prefix/Ruckus7982(2.1.0.0.56) 2.4GHz Open/script-report-Ruckus7982-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Ruckus7982(2.1.0.0.56) 5GHz Open')
          NEW="${prefix/Ruckus7982(2.1.0.0.56) 5GHz Open/script-report-Ruckus7982-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Tenda-W1800R(V2.0.0.10_EN_AAA) 2.4GHz Open')
          NEW="${prefix/Tenda-W1800R(V2.0.0.10_EN_AAA) 2.4GHz Open/script-report-Tenda1800R-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'Tenda-W1800R(V2.0.0.10_EN_AAA) 5GHz Open')
          NEW="${prefix/Tenda-W1800R(V2.0.0.10_EN_AAA) 5GHz Open/script-report-Tenda1800R-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'OnHub(8530.71.2) 2.4GHz Open')
          NEW="${prefix/OnHub(8530.71.2) 2.4GHz Open/script-report-OnHub-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'OnHub(8530.71.2) 5GHz Open')
          NEW="${prefix/OnHub(8530.71.2) 5GHz Open/script-report-OnHub-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AC-HD(3.8.3.6587) 2.4GHz Open')
          NEW="${prefix/AC-HD(3.8.3.6587) 2.4GHz Open/script-report-AC-HD-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AC-HD(3.8.3.6587) 5GHz Open')
          NEW="${prefix/AC-HD(3.8.3.6587) 5GHz Open/script-report-AC-HD-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AC-Pro(3.8.3.6587) 2.4GHz Open')
          NEW="${prefix/AC-Pro(3.8.3.6587) 2.4GHz Open/script-report-AC-Pro-2.4-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      'AC-Pro(3.8.3.6587) 5GHz Open')
          NEW="${prefix/AC-Pro(3.8.3.6587) 5GHz Open/script-report-AC-Pro-5-Open}"
          mkdir $VAR$DIR$NEW
          find "$file" -type f -exec cp {} "$VAR$DIR$NEW" \;
       ;;
      esac
done

rm -rf $DOC$DAT*;

exit 0
