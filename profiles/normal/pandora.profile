# Standard Pandora traffic profile
#
# https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/normal/pandora.profile#L11

listeners
uselistener http
set Name bing
set DefaultJitter 0
set DefaultDelay 1
set DefaultProfile /access?version=4&lid=1582502724|Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko|Accept:*/*|GetContentFeatures.DLNA.ORG:1|Host:audio-sv5-t1-3.pandora.com
set Headers Server:Apache|Cache-Control:no-cache, no-store, must-revalidate, max-age=-1|Pragma:no-cache, no-store|Connection:close|Content-Type:audio/mp4