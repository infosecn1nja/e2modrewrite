# Taidoor Profile
#
# https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/APT/taidoor.profile

listeners
uselistener http
set Name taidoor
set DefaultDelay 40
Set DefaultJitter 35
set DefaultProfile /login.jsp,/parse.jsp,/page.jsp,/default.jsp,/index.jsp,/process.jsp,/security.jsp,/user.jsp|Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)|Connection:Keep-Alive|Cache-Control:no-cache
set Headers Server:Microsoft-IIS/5.0|Content-Type:text/html|Connection:close