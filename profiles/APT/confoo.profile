# Basic comfoo profile
#   http://www.secureworks.com/cyber-threat-intelligence/threats/secrets-of-the-comfoo-masters/
#   https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/APT/comfoo.profile

listeners
uselistener http
set Name comfoo
set DefaultDelay 30
Set DefaultJitter 20
set DefaultProfile /CWoNaJLBo/VTNeWw11212/|Mozilla/4.0 (compatible; MSIE 6.0;Windows NT 5.1)|Keep-Alive:timeout=15, max=90|Accept:image/gif, image/x-xbitmap, image/jpeg, image/pjpeg, */*|Accept-Language:en-en|Connection:Keel-Alive|Cache-Control:no-cache
set Headers Server:Apache/2.0.50 (Unix)|Keep-Alive:timeout=15, max=90