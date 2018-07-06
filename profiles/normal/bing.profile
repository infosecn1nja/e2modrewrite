# Bing Web Search
#
# https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/normal/bingsearch_getonly.profile
#
# Author: Rahmat Nurfauzi - @infosecn1nja

listeners
uselistener http
set Name bing
set DefaultJitter 20
set DefaultDelay 6
set DefaultProfile /search?q=news&qs=n&form=QBLH,/search?q=sport&qs=n&form=QBLH,/search?q=health&qs=n&form=QBLH|Mozilla/5.0 (compatible, MSIE 11, Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko|Host:www.bing.com|Accept:text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8
set Headers Server:Microsoft-IIS/8.5|Cache-Control:private, max-age=0|Content-Type:text/html; charset=utf-8|Vary:Accept-Encoding
