# Basic Zeus variant profile
#   https://malwr.com/analysis/NjIwNTU2ODA2OTUxNDcwNmJiMTMzYzk4YzU4NWQyZDQ/
#   https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/crimeware/zeus.profile

listeners
uselistener http
set Name zeus
set DefaultDelay 30
Set DefaultJitter 5
set DefaultProfile /metro91/admin/1/ppptp.jpg,/metro91/admin/1/secure.php|Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.2)|Host:mahamaya1ifesciences.com|Cache-Control:no-cache|Accept-Encoding: deflate, gzip;q=1.0, *;q=0.5|Accept:*/*
set Headers Server:nginx/1.0.4|Content-Type:text/html|Connection:close|X-Powered-By:PHP/5.3.8-1~dotdeb.2