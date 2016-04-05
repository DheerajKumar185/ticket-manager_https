# ticket-manager_https
ticket-manager_https running with login and calling ticket-manager rest service

deploy both project on tomcat server and enable the following code in server.xml that is located in tomcat/config folder. and also keep the MyCert.cert file at the mentioned keystoreFile location.

<Connector port="8443" protocol="org.apache.coyote.http11.Http11NioProtocol" SSLEnabled="true"
               maxThreads="150" scheme="https" secure="true"
               clientAuth="false" sslProtocol="TLS" keystoreFile="D:\MyCert.cert" keystorePass="Password"/>
