#
# Online Certificate Status Protocol (OCSP) Profile
#   http://tools.ietf.org/html/rfc6960
#

listeners
uselistener http
set Name ocsp
set DefaultDelay 20
Set DefaultJitter 20
set DefaultProfile /oscp/,/oscp/a|Microsoft-CryptoAPI/6.1|Accept:*/*|host:ocsp.verisign.com
set Headers content-type:application/ocsp-response|content-transfer-encoding:binary|cache-control:max-age=547738, public, no-transform, must-revalidate|connection:keep-alive