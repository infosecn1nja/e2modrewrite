# Fiesta Exploit Kit traffic profile
#   http://malware-traffic-analysis.net/2014/04/05/index.html
#   https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/crimeware/fiesta.profile

listeners
uselistener http
set Name fiesta
set DefaultDelay 30
Set DefaultJitter 10
set DefaultProfile /rmvk30g/|Mozilla/4.0 (Windows 7 6.1) Java/1.7.0_11|Acccept:text/html, image/gif, image/jpeg, *; q=.2, */*; q=.2
set Headers Server:Apache/2.2.15 (CentOS)|X-Powered-By:PHP/5.3.27|Content-Type:application/octet-stream|Connection:close