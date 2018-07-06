#
# Safebrowsing Comms profile
#   https://code.google.com/p/google-safe-browsing/wiki/SafeBrowsingDesign
#
# Author: Rahmat Nurfauzi - @infosecn1nja

listeners
uselistener http
set Name safebrowsing
set DefaultJitter 20
set DefaultDelay 60
set DefaultProfile /safebrowsing/rd/CltOb12nLW1IbHehcmUtd2hUdmFzEBAY7-0KIOkUDC7h2,/safebrowsing/rd/CltOb12nLW1IbHehcmUtd2hUdmFzEBAY7-0KIOkUDC7h2|Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko|Accept:text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8|Accept-Language:en-US,en;q=0.5|Accept-Encoding:gzip, deflate
set Headers Accept:text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8|Accept-Language:en-US,en;q=0.5|Accept-Encoding:gzip, deflate