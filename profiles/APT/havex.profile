# havex trojan C&C profile
# https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/APT/havex.profile

listeners
uselistener http
set Name havex
set DefaultDelay 30
Set DefaultJitter 0
set DefaultProfile /include/template/isx.php,/wp06/wp-includes/po.php,/wp08/wp-includes/dtcla.php,/modules/mod_search.php,/blog/wp-includes/pomo/src.php,/includes/phpmailer/class.pop3.php|Mozilla/5.0 (Windows; U; MSIE 7.0; Windows NT 5.2) Java/1.5.0_08|Referer:http://www.google.com|Accept:text/xml,application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5
set Headers Server:Apache/2.2.26 (Unix)|X-Powered-By:PHP/5.3.28|Cache-Control:no-cache|Content-Type:text/html|Keep-Alive:timeout=3, max=100
