# Amazon browsing traffic profile
#
# https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/normal/amazon.profile
#
# Author: Rahmat Nurfauzi - @infosecn1nja

listeners
uselistener http
set Name amazon
set DefaultJitter 0
set DefaultDelay 5
set DefaultProfile /s/ref=nb_sb_noss_1/167-3294888-0262949/field-keywords=book,/N4215/adj/amzn.us.sr.aps?sz=160x600&oe=oe&sn=91191&s=3717&dc_ref=http%3A%2F%2Fwww.amazon.com|Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko|host:www.amazon.com|accept:*/*
set Headers Server:Server|x-amz-id-1:THKUYEZKCKPGY5T42PZT|x-amz-id-2:a21yZ2xrNDNtdGRsa212bGV3YW85amZuZW9ydG5rZmRuZ2tmZGl4aHRvNDVpbgo=|X-Frame-Options:SAMEORIGIN|x-ua-compatible: IE=edge
