# Basic Pitty Tiger RAT profile
#   http://bitbucket.cassidiancybersecurity.com/whitepapers/downloads/Pitty%20Tiger%20Final%20Report.pdf
#   https://github.com/rsmudge/Malleable-C2-Profiles/blob/master/APT/pitty_tiger.profile

listeners
uselistener http
set Name ocsp
set DefaultDelay 30
Set DefaultJitter 20
set DefaultProfile /FC001/JOHN|Microsoft Internet Explorer|Host:newb02.skypetm.com.tw|Connection:keep-alive
set Headers Content-Type:text/html|Server:IIS5.0