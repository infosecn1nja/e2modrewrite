#!/usr/bin/python
# Convert empire profile to modrewrite script

import re
import argparse
import sys

description = '''
Converts Empire profiles to Apache mod_rewrite .htaccess file format by using the User-Agent and URI Endpoint to create rewrite rules.'''

parser = argparse.ArgumentParser(description=description)
parser.add_argument('-i', dest='inputfile', help='C2 Profile file')
parser.add_argument('-c', dest='c2Server', help='C2 Server (http://teamserver)')
parser.add_argument('-d', dest='destination', help='(Optional) Redirect to this URL (http://google.com)')

args = parser.parse_args()

# Check Arguments
if not args.inputfile:
    print("[!] Missing inputfile")
    parser.print_help()
    sys.exit(1)

if not args.c2Server:
    print("[!] Missing c2Server")
    parser.print_help()
    sys.exit(1)

if not args.destination: 
    print("[!] Missing destination")
    parser.print_help()
    sys.exit(1)


empireC2 = args.c2Server
redirect = args.destination

htaccess_template = '''#### Save the following as .htaccess in the root web directory
########################################
## .htaccess START

RewriteEngine On

## (Optional)
## Empire Stager
## Uncomment and adjust as needed
#RewriteCond %{{REQUEST_URI}} ^/css/style1.css?$
#RewriteCond %{{HTTP_USER_AGENT}} ^$
#RewriteRule ^.*$ "http://{}/download/po" [P,L]

## Profile URIs
RewriteCond %{{REQUEST_URI}} ^/({})/?$

## Profile UserAgent
RewriteCond %{{HTTP_USER_AGENT}} ^{}?$
RewriteRule ^.*$ http://{}%{{REQUEST_URI}} [P]

# Redirect all other traffic here
RewriteRule ^.*$ {}/? [L,R=302]

## .htacess END
########################################
'''

ua_string = "set DefaultProfile"
commProfile = open(args.inputfile, 'r')
contents = commProfile.read()

ua_start = contents.find(ua_string) + len(ua_string)
ua_end   = contents.find("\n",ua_start)
ua_profile = contents[ua_start:ua_end]

commProfile.close()
profile = re.sub(r'(?m)^\#.*\n?', '', ua_profile.lstrip()).strip('\n')

uri_string = profile.split('|')[0]
uri = uri_string.replace('\"','').replace(',','|').replace(',','|').strip('/')
uri = uri.replace('|/','|')

user_agent_string = profile.split('|')[1]
user_agent = user_agent_string.replace(' ','\ ').replace('.','\.').replace('(','\(').replace(')','\)')

rules = (htaccess_template.format(empireC2,uri,user_agent,empireC2,redirect))
print rules