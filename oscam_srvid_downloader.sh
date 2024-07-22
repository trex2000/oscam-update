OUTPUT_PATH=/var/etc/oscam/
#do not modify below
curl  "http://kos.twojeip.net/download.php?download[]=pack-abscbn&download[]=pack-akta&download[]=pack-austriasat&download[]=pack-bis&download[]=pack-boom&download[]=pack-bulsatcom&download[]=pack-cslink&download[]=pack-canaldigitaal&download[]=pack-canaldigitalnordic&download[]=pack-canalsat&download[]=pack-multicanal&download[]=pack-polsat&download[]=pack-dsmart&download[]=pack-dmc&download[]=pack-digitalb&download[]=pack-digitalplusa&download[]=pack-digitalplush&download[]=pack-digiturk&download[]=pack-dolcetv&download[]=pack-focussat&download[]=pack-fransat&download[]=pack-hdplus&download[]=pack-hellohd&download[]=pack-kabeld&download[]=pack-kabelkiosk&download[]=pack-cplus26e&download[]=pack-mtv&download[]=pack-maxtv&download[]=pack-mediaset&download[]=pack-meo&download[]=pack-mobistar&download[]=pack-mcafrica&download[]=pack-mytv&download[]=pack-ncplus&download[]=pack-nos&download[]=pack-orfdigital&download[]=pack-ote&download[]=pack-orange&download[]=pack-orangepl&download[]=pack-orbit&download[]=pack-showtime&download[]=pack-platformadv&download[]=pack-platformahd&download[]=pack-rai&download[]=pack-digitv&download[]=pack-raduga&download[]=pack-ssr&download[]=pack-satellitebg&download[]=pack-skygermany&download[]=pack-skydigital&download[]=pack-skyitalia&download[]=pack-skylink&download[]=pack-tvvlaanderen&download[]=pack-tvp&download[]=pack-telesat&download[]=pack-tvnakarte&download[]=pack-tivusat&download[]=pack-totaltv&download[]=pack-tring&download[]=pack-upc&download[]=pack-viasat&download[]=pack-visiontv&download[]=pack-vivacom" -o $OUTPUT_PATH/oscam.srvid
chmod 777 $OUTPUT_PATH/oscam.srvid
python3 generate_services.py $OUTPUT_PATH/oscam.srvid $OUTPUT_PATH/oscam.services
systemctl restart oscam